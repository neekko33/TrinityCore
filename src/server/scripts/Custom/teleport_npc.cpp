#include "Creature.h"
#include "DatabaseEnv.h"
#include "Define.h"
#include "GossipDef.h"
#include "Item.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Spell.h"
#include "WorldSession.h"

struct TeleportData {
    uint32 id;
    uint32 npcId;
    uint32 menuId;
    uint32 subMenuId;
    uint8 icon;
    std::string Comment;
    uint32 mapId;
    float x;
    float y;
    float z;
    float orientation;
    int8 faction;
    uint8 isEmpty;
};

class teleport_npc : public CreatureScript {
public:
    teleport_npc() : CreatureScript("teleport_npc") {}

    struct TeleportNpcAI : public ScriptedAI
    {
        Creature* _creature;
        std::vector<TeleportData> queryDatas;
        std::vector<TeleportData> datas;
        TeleportNpcAI(Creature* creature) : ScriptedAI(creature) {
            _creature = creature;
        }

        void LoadTeleportNpc()
        {
            if (!queryDatas.empty())
            {
                queryDatas.clear();
            }
            QueryResult result = WorldDatabase.Query(
                "SELECT Id, NpcId, MenuId, SubMenuId, Icon, Comment, MapId, X, Y, Z, "
                "O, Faction, IsEmpty FROM _teleport_npc_template ORDER BY Id");
            if (!result) return;
            do {
                Field* fields = result->Fetch();
                uint8 index = 0;
                TeleportData data;
                data.id = fields[index++].GetUInt32();
                data.npcId = fields[index++].GetUInt32();
                data.menuId = fields[index++].GetUInt32();
                data.subMenuId = fields[index++].GetUInt32();
                data.icon = fields[index++].GetUInt8();
                data.Comment = fields[index++].GetString();
                data.mapId = fields[index++].GetUInt32();
                data.x = fields[index++].GetFloat();
                data.y = fields[index++].GetFloat();
                data.z = fields[index++].GetFloat();
                data.orientation = fields[index++].GetFloat();
                data.faction = fields[index++].GetInt8();
                data.isEmpty = fields[index++].GetInt8();
                queryDatas.push_back(data);
            } while (result->NextRow());
        }

        void ActionLoad(uint32 menuId, Creature* _Creature) {
            if (!datas.empty()) {
                datas.clear();
            }
            for (TeleportData data : queryDatas) {
                if (data.menuId == menuId && data.npcId == _Creature->GetEntry()) {
                    datas.push_back(data);
                }
            }
        }

        void SendMenu(Player* player, Creature* _Creature)
        {
            std::vector<uint8> alienceRace = { RACE_HUMAN, RACE_DWARF, RACE_NIGHTELF,
                                              RACE_GNOME, RACE_DRAENEI };
            bool isAlience = std::count(alienceRace.begin(), alienceRace.end(),
                player->GetRace()) != 0;
            for (TeleportData data : datas) {
                if (!(data.faction == -1 || (isAlience && data.faction == 1) ||
                    (!isAlience && data.faction == 0)))
                    continue;
                AddGossipItemFor(player, GossipOptionIcon(data.icon), data.Comment,
                    GOSSIP_SENDER_MAIN, data.id);
            }
            SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, _Creature->GetGUID());
        }

        bool OnGossipHello(Player* player) override
        {
            ClearGossipMenuFor(player);  // Clears old options
            LoadTeleportNpc();
            ActionLoad(1, _creature);
            SendMenu(player, _creature);
            return true;
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        {
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);  // Clears old options
            for (TeleportData data : datas) {
                if (data.id == action) {
                    if (data.isEmpty == 0) {
                        CloseGossipMenuFor(player);
                        player->TeleportTo(data.mapId, data.x, data.y, data.z,
                            data.orientation);
                        return true;
                    }
                    ActionLoad(data.subMenuId != 0 ? data.subMenuId : data.menuId,
                        _creature);
                    SendMenu(player, _creature);
                    return true;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override {
        return new TeleportNpcAI(creature);
    }
};

void AddSC_teleport_npc()  // Add to scriptloader normally
{
    new teleport_npc();
}

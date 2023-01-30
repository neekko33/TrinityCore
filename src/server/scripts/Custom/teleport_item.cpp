#include "Chat.h"
#include "DatabaseEnv.h"
#include "Define.h"
#include "GossipDef.h"
#include "Item.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"
#include "Spell.h"
#pragma execution_character_set("UTF-8")

struct TeleportData {
    uint32 id;
    uint32 itemId;
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

class teleport_item : public ItemScript {
public:
    std::vector<TeleportData> queryDatas;
    std::vector<TeleportData> datas;
    teleport_item() : ItemScript("teleport_item") {}

    void LoadTeleportItem() {
        if (!queryDatas.empty())
        {
            queryDatas.clear();
        }
        QueryResult result = WorldDatabase.Query(
            "SELECT Id, ItemId, MenuId, SubMenuId, Icon, Comment, MapId, X, Y, Z, "
            "O, Faction, IsEmpty FROM _teleport_item_template ORDER BY Id");
        if (!result) return;
        do {
            Field* fields = result->Fetch();
            uint8 index = 0;
            TeleportData data;
            data.id = fields[index++].GetUInt32();
            data.itemId = fields[index++].GetUInt32();
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

    void ActionLoad(uint32 menuId, Item* item) {
        if (!datas.empty()) {
            datas.clear();
        }
        for (TeleportData data : queryDatas) {
            if (data.menuId == menuId && data.itemId == item->GetEntry()) {
                datas.push_back(data);
            }
        }
    }

    void SendMenu(Player* player, Item* item) {
        std::vector<uint8> alienceRace = {
            RACE_HUMAN, RACE_DWARF,   RACE_NIGHTELF,
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
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, item->GetGUID());
    }

    bool OnUse(Player* player, Item* item,
        SpellCastTargets const& /*targets*/) override  // Any hook here
    {
        if (player->IsInCombat()) {
            ChatHandler(player->GetSession()).PSendSysMessage("Error: Player in combat.");
            return true;
        }
        LoadTeleportItem();
        ClearGossipMenuFor(player);  // Clears old options
        ActionLoad(1, item);
        SendMenu(player, item);
        return true;
    }

    void OnGossipSelect(Player* player, Item* item, uint32 /*menuIdr*/,
        uint32 gossipListId) override {
        uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        ClearGossipMenuFor(player);  // Clears old options
        for (TeleportData data : datas) {
            if (data.id == action) {
                if (data.isEmpty == 0) {
                    CloseGossipMenuFor(player);
                    player->TeleportTo(data.mapId, data.x, data.y, data.z,
                        data.orientation);
                    return;
                }
                ActionLoad(data.subMenuId != 0 ? data.subMenuId : data.menuId, item);
                SendMenu(player, item);
                return;
            }
        }
    }
};

void AddSC_teleport_item()  // Add to scriptloader normally
{
    new teleport_item();
}

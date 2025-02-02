-----------------------------------
-- Area: Lower Jeuno
--  NPC: Omer
-----------------------------------
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local path =
{
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -86.526, 0.000, -119.860,
    -88.534, 0.000, -123.455,
    -90.461, 0.000, -126.942,
    -90.623, 0.000, -127.508, -- Force turn.
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -90.752, 0.000, -127.466,
    -88.534, 0.000, -123.455,
    -86.783, 0.000, -120.323,
    -86.386, 0.000, -119.865, -- Force turn.
}

entity.onSpawn = function(npc)
    npc:initNpcAi()
    npc:setPos(xi.path.first(path))
end

entity.onPath = function(npc)
    xi.path.patrol(npc, path)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity

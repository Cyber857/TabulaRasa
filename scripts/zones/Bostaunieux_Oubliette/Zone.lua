-----------------------------------
-- Zone: Bostaunieux_Oubliette (167)
-----------------------------------
local ID = require("scripts/zones/Bostaunieux_Oubliette/IDs")
require("scripts/globals/conquest")
require("scripts/globals/mobs")
-----------------------------------
local zone_object = {}

zone_object.onInitialize = function(zone)
    UpdateNMSpawnPoint(ID.mob.DREXERION_THE_CONDEMNED)
    GetMobByID(ID.mob.DREXERION_THE_CONDEMNED):setRespawnTime(math.random(900, 10800))

    UpdateNMSpawnPoint(ID.mob.PHANDURON_THE_CONDEMNED)
    GetMobByID(ID.mob.PHANDURON_THE_CONDEMNED):setRespawnTime(math.random(900, 10800))

    UpdateNMSpawnPoint(ID.mob.BLOODSUCKER)
    xi.mob.NMPersistCache(ID.mob.BLOODSUCKER)
end

zone_object.onZoneIn = function(player, prevZone)
    local cs = -1

    if player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0 then
        player:setPos(99.978, -25.647, 72.867, 61)
    end

    return cs
end

zone_object.onConquestUpdate = function(zone, updatetype)
    xi.conq.onConquestUpdate(zone, updatetype)
end

zone_object.onRegionEnter = function(player, region)
end

zone_object.onEventFinish = function(player, csid, option)
end

zone_object.onGameHour = function(zone)
    -- Don't allow Manes or Shii to spawn outside of night
    if VanadielHour() >= 6 and VanadielHour() < 18 then
        DisallowRespawn(ID.mob.MANES, true)
        DisallowRespawn(ID.mob.SHII, true)
    else
        DisallowRespawn(ID.mob.MANES, false)
        DisallowRespawn(ID.mob.SHII, false)
    end
end

return zone_object

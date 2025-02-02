-----------------------------------
-- Area: Quicksand Caves
--   NM: Antican Consul
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

entity.onMobDespawn = function(mob)
    local respawn = math.random(75600,86400) -- 21 to 24 hours
    xi.mob.NMPersist(mob,respawn)
end

return entity

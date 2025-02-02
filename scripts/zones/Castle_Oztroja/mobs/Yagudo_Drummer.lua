-----------------------------------
-- Area: Castle Oztroja (151)
--  Mob: Yagudo Drummer
-- Note: PH for Mee Deggi the Punisher
-----------------------------------
local ID = require("scripts/zones/Castle_Oztroja/IDs")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.MEE_DEGGI_THE_PUNISHER_PH, 10, 3000) -- 50 minutes
end

return entity

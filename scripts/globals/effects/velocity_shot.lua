-----------------------------------
-- xi.effect.VELOCITY_SHOT
-----------------------------------
require("scripts/globals/jobpoints")
require("scripts/globals/status")
-----------------------------------
local effect_object = {}

effect_object.onEffectGain = function(target, effect)
    local jpValue = target:getJobPointLevel(xi.jp.VELOCITY_SHOT_EFFECT)

    target:addMod(xi.mod.RATT, jpValue * 2)
    target:addMod(xi.mod.ATTP, -15)
    target:addMod(xi.mod.HASTE_ABILITY, -1500)
    target:addMod(xi.mod.RATTP, 15)
    target:addMod(xi.mod.RANGED_DELAYP, -15)
end

effect_object.onEffectTick = function(target, effect)
end

effect_object.onEffectLose = function(target, effect)
    local jpValue = target:getJobPointLevel(xi.jp.VELOCITY_SHOT_EFFECT)

    target:delMod(xi.mod.RATT, jpValue * 2)
    target:delMod(xi.mod.ATTP, -15)
    target:delMod(xi.mod.HASTE_ABILITY, -1500)
    target:delMod(xi.mod.RATTP, 15)
    target:delMod(xi.mod.RANGED_DELAYP, -15)
end

return effect_object

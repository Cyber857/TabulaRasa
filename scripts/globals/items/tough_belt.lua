-----------------------------------
-- ID: 15864
-- Item: tough_belt
-- Item Effect: VIT +3
-- Duration: 60 seconds
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local effect = target:getStatusEffect(xi.effect.ENCHANTMENT)
    if effect ~= nil and effect:getSubType() == 15864 then
        target:delStatusEffect(xi.effect.ENCHANTMENT)
    end
    return 0
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.ENCHANTMENT, 0, 0, 60, 15864)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.VIT, 3)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.VIT, 3)
end

return item_object

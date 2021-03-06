-----------------------------------------
-- ID: 4582
-- Item: serving_of_bass_meuniere
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Health % 3
-- Dexterity 3
-- Agility 3
-- Mind -3
-- Ranged ACC % 6
-- Ranged ACC Cap 15
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,10800,4582);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_HPP, 3);
    target:addMod(MOD_DEX, 3);
    target:addMod(MOD_AGI, 3);
    target:addMod(MOD_MND, -3);
    target:addMod(MOD_FOOD_RACCP, 6);
    target:addMod(MOD_FOOD_RACC_CAP, 15);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_HPP, 3);
    target:delMod(MOD_DEX, 3);
    target:delMod(MOD_AGI, 3);
    target:delMod(MOD_MND, -3);
    target:delMod(MOD_FOOD_RACCP, 6);
    target:delMod(MOD_FOOD_RACC_CAP, 15);
end;

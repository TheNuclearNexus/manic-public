advancement revoke @s only manic:technical/raycast/bottle

tag @s add manic.interact
execute anchored eyes run function manic:item/corpse_sap/raycast
execute if entity @s[tag=manic.found] run function manic:item/corpse_sap/replace_bottle
tag @s remove manic.found
tag @s remove manic.interact
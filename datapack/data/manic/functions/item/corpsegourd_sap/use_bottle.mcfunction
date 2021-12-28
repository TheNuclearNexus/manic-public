advancement revoke @s only manic:technical/raycast/gourd_bottle

tag @s add manic.interact
execute anchored eyes run function manic:item/corpsegourd_sap/raycast
execute if entity @s[tag=manic.found] run function manic:item/corpsegourd_sap/replace_bottle
tag @s remove manic.found
tag @s remove manic.interact
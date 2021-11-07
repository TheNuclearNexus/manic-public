advancement revoke @s only pht:raycast/bottle

tag @s add pht.interact
execute anchored eyes run function pht:item/corpse_sap/raycast
execute if entity @s[tag=pht.found] run function pht:item/corpse_sap/replace_bottle
tag @s remove pht.found
tag @s remove pht.interact
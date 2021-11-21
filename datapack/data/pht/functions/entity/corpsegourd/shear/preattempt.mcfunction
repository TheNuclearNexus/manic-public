advancement revoke @s only pht:raycast/shears

tag @s add pht.interact
execute anchored eyes run function pht:entity/corpsegourd/shear/raycast
tag @s remove pht.found
tag @s remove pht.interact
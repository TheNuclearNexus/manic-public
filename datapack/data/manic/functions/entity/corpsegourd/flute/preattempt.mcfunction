advancement revoke @s only manic:technical/raycast/corpsegourd/corpseflute

tag @s add manic.interact
execute if score @s manic.sanity matches 51.. anchored eyes run function manic:entity/corpsegourd/flute/raycast
tag @s remove manic.found
tag @s remove manic.interact
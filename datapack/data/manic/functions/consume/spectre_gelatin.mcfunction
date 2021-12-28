advancement revoke @s only manic:technical/consume/spectre_gelatin
scoreboard players add @s manic.sanity 100

effect give @s invisibility 10
tag @s add manic.gelatin
function manic:player/spawn_init
tag @s remove manic.gelatin
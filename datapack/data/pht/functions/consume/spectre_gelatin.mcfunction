advancement revoke @s only pht:consume/spectre_gelatin
scoreboard players add @s pht.sanity 100

effect give @s invisibility 10
tag @s add pht.gelatin
function pht:player/spawn_init
tag @s remove pht.gelatin
advancement revoke @s only pht:schizoid_hurt_player
scoreboard players remove @s pht.sanity 15
execute if score #pht.difficulty pht.dummy matches 3 run scoreboard players remove @s pht.sanity 15
function pht:player/sanity_display
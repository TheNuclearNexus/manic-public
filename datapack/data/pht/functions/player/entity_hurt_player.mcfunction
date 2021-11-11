advancement revoke @s only pht:entity_hurt_player
scoreboard players remove @s pht.sanity 20
execute if score #pht.difficulty pht.dummy matches 3 run scoreboard players remove @s pht.sanity 20
function pht:player/sanity_display
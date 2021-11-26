advancement revoke @s only pht:entity_hurt_player
execute unless score @s pht.safe_time matches 1.. run scoreboard players remove @s pht.sanity 20
execute unless score @s pht.safe_time matches 1.. if score #pht.difficulty pht.dummy matches 3 run scoreboard players remove @s pht.sanity 20
function pht:player/sanity_display
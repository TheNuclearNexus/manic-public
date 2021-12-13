advancement revoke @s only pht:schizoid_hurt_player
execute unless score @s pht.safe_time matches 1.. run scoreboard players remove @s pht.sanity 15
execute unless score @s pht.safe_time matches 1.. if score #pht.difficulty pht.dummy matches 3 run scoreboard players remove @s pht.sanity 15
function pht:player/sanity_display

execute if score #pht.difficulty pht.dummy matches 3 unless score #pht.blindness pht.dummy3 matches 1.. run effect give @s blindness 10
execute if score #pht.difficulty pht.dummy matches 2 unless score #pht.blindness pht.dummy3 matches 1.. run effect give @s blindness 7
execute if score #pht.difficulty pht.dummy matches 1 unless score #pht.blindness pht.dummy3 matches 1.. run effect give @s blindness 5

execute if score @s pht.sanity matches ..2222 if predicate pht:chance/chitter_schizoid run function pht:entity/chitter/spawn
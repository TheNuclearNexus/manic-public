advancement revoke @s only manic:technical/schizoid_hurt_player
execute unless score @s manic.safe_time matches 1.. run scoreboard players remove @s manic.sanity 5
execute unless score @s manic.safe_time matches 1.. if score #manic.difficulty manic.dummy matches 3 run scoreboard players remove @s manic.sanity 5
function manic:player/sanity_display

execute if score @s manic.sanity matches ..2222 if predicate manic:chance/chitter_schizoid run function manic:entity/chitter/spawn
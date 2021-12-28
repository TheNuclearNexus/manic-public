advancement revoke @s only manic:technical/entity_hurt_player
scoreboard players operation @s manic.damage_taken /= #manic.constant_5 manic.dummy
execute unless score @s manic.safe_time matches 1.. run scoreboard players operation @s manic.sanity -= @s manic.damage_taken
scoreboard players reset @s manic.damage_taken
function manic:player/sanity_display

execute if score @s manic.sanity matches ..2222 if predicate manic:chance/chitter run function manic:entity/chitter/spawn
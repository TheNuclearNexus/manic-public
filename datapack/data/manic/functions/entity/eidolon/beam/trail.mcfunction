tp @s ^ ^ ^1
scoreboard players add @s manic.dummy 1
execute if score @s manic.dummy matches 18.. run function manic:entity/eidolon/beam/trail_finish
execute if entity @e[type=player,distance=0..1] run function manic:entity/eidolon/beam/trail_damage
execute positioned ~ ~-1 ~ if entity @e[type=player,distance=0..1] run function manic:entity/eidolon/beam/trail_damage
execute unless block ~ ~1 ~ #manic:raycast_ignore run function manic:entity/eidolon/beam/trail_finish
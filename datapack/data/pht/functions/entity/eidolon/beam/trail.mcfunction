tp @s ^ ^ ^1
scoreboard players add @s pht.dummy 1
execute if score @s pht.dummy matches 18.. run function pht:entity/eidolon/beam/trail_finish
execute if entity @e[type=player,distance=0..1] run function pht:entity/eidolon/beam/trail_damage
execute positioned ~ ~-1 ~ if entity @e[type=player,distance=0..1] run function pht:entity/eidolon/beam/trail_damage
execute unless block ~ ~1 ~ #pht:raycast_ignore run function pht:entity/eidolon/beam/trail_finish
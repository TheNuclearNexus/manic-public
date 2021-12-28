schedule function manic:entity/chitter/despawn 5s replace

playsound manic:entity.chitter hostile @a ~ ~ ~ 1.4
execute positioned ^ ^ ^2 run function manic:entity/chitter/alt_spawn
execute positioned ^ ^ ^2 run particle minecraft:squid_ink ~ ~1.25 ~ 0.5 0.5 0.5 0 15 force

execute if predicate manic:chance/third positioned ~-3 ~ ~ run function manic:entity/chitter/alt_spawn
execute if predicate manic:chance/third positioned ~3 ~ ~ run function manic:entity/chitter/alt_spawn
execute if predicate manic:chance/third positioned ~ ~ ~-3 run function manic:entity/chitter/alt_spawn
execute if predicate manic:chance/third positioned ~ ~ ~3 run function manic:entity/chitter/alt_spawn

execute unless score #manic.blindness manic.dummy3 matches 1.. run effect give @s blindness 6 0
schedule function pht:entity/chitter/despawn 5s replace

playsound pht:entity.chitter hostile @a ~ ~ ~ 2
execute positioned ^ ^ ^2 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360076}}],Invisible:1b,Marker:1b,Tags:["smithed.entity","global.ignore","pht.entity","pht.chitter"]}
execute positioned ^ ^ ^2 run particle minecraft:squid_ink ~ ~1.25 ~ 0.5 0.5 0.5 0 15 force

execute if predicate pht:chance/third positioned ~-3 ~ ~ run function pht:entity/chitter/alt_spawn
execute if predicate pht:chance/third positioned ~3 ~ ~ run function pht:entity/chitter/alt_spawn
execute if predicate pht:chance/third positioned ~ ~ ~-3 run function pht:entity/chitter/alt_spawn
execute if predicate pht:chance/third positioned ~ ~ ~3 run function pht:entity/chitter/alt_spawn

execute unless score #pht.blindness pht.dummy3 matches 1.. run effect give @s blindness 6 0 true
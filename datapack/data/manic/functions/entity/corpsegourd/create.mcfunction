execute store result score @s manic.rotation run data get entity @p Rotation[0]

execute align xyz run summon wandering_trader ~0.5 ~ ~0.5 {Rotation:[90.0f,0.0f],NoAI:1b,Silent:1b,NoGravity:1b,DeathTime:19s,DeathLootTable:"minecraft:empty",Health:9999f,Willing:0b,Tags:["manic.entity","manic.corpsegourd","smithed.entity","smithed.block","manic.new_block","global.ignore"],HandItems:[{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360021}},{}],HandDropChances:[-327.670F,0.085F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9999}]}
execute as @e[tag=manic.corpsegourd] run data remove entity @s Offers.Recipes
playsound minecraft:block.fungus.place block @a

execute if score @s manic.rotation matches -135..-45 run data merge entity @e[sort=nearest,limit=1,tag=manic.new_block] {Rotation:[180.0f,0.0f]}
execute if score @s manic.rotation matches 45..135 run data merge entity @e[sort=nearest,limit=1,tag=manic.new_block] {Rotation:[0.0f,0.0f]}
execute if score @s manic.rotation matches -45..45 run data merge entity @e[sort=nearest,limit=1,tag=manic.new_block] {Rotation:[270.0f,0.0f]}

execute as @e[tag=manic.new_block] run function manic:entity/join_antivillager
tag @e[tag=manic.corpsegourd,sort=nearest,limit=1] remove manic.new_block

scoreboard players reset @s manic.rotation

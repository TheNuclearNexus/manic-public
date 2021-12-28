execute align xyz run summon wandering_trader ~0.5 ~ ~0.5 {Rotation:[90.0f,0.0f],NoAI:1b,Silent:1b,NoGravity:1b,DeathTime:19s,DeathLootTable:"minecraft:empty",Health:9999f,Willing:0b,Tags:["manic.entity","manic.podium","smithed.entity","smithed.block","manic.new_block","global.ignore","manic.podium.empty"],HandItems:[{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360089}},{}],HandDropChances:[-327.670F,0.085F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9999}]}
execute as @e[tag=manic.podium] run data remove entity @s Offers.Recipes
playsound minecraft:block.anvil.place block @a[distance=0..16] ~ ~ ~ 1 1.25

execute as @e[tag=manic.new_block] run function manic:entity/join_antivillager

tag @e[tag=manic.podium,sort=nearest,limit=1] remove manic.new_block
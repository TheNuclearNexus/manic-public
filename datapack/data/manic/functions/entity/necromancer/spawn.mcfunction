summon wandering_trader ~ ~ ~ {HandDropChances:[-327.670F,-327.670F],CustomName:'{"translate":"manic.entity.necromancer"}',DeathTime:19s,Silent:1b,DespawnDelay:0,Tags:["manic.entity","manic.necromancer","smithed.entity","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360027}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Offers:{},ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:40f,Attributes:[{Name:generic.max_health,Base:40}],DeathLootTable:"manic:entities/necromancer"}
execute if entity @s[type=witch] unless entity @s[nbt={HasRaidGoal:1b}] run tp @s ~ -512 ~

execute as @e[tag=manic.necromancer] run function manic:entity/join_antivillager

scoreboard players set @e[tag=manic.necromancer,sort=nearest,limit=1] manic.sanity 500
summon wandering_trader ~ ~ ~ {HandDropChances:[-327.670F,-327.670F],CustomName:'{"translate":"manic.entity.insomniac"}',DeathTime:19s,Silent:1b,DespawnDelay:24000,Tags:["manic.entity","manic.insomniac","smithed.entity","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360012}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Offers:{},ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}

execute as @e[tag=manic.insomniac] run function manic:entity/join_antivillager

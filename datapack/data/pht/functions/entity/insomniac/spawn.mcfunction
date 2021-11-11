# Thank me later.

summon wandering_trader ~ ~ ~ {HandDropChances:[0.0f,0.0f],CustomName:'{"pht.entity.insomniac"}',DeathTime:19s,Silent:1b,DespawnDelay:24000,Tags:["pht.entity","pht.insomniac","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360012}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Offers:{},ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
execute as @e[tag=pht.insomniac,tag=!pht.found] run function pht:entity/insomniac/modify

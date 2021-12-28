summon wandering_trader ~ ~ ~ {DeathLootTable:"manic:entities/corpsecreep",HandDropChances:[-327.670F,-327.670F],CustomName:'{"translate":"manic.entity.corpsecreep"}',DeathTime:19s,Silent:1b,DespawnDelay:0,Tags:["manic.entity","manic.corpsecreep","smithed.entity","global.ignore"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Offers:{},ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.7}]}

execute as @e[tag=manic.corpsecreep] run function manic:entity/join_antivillager


tp @s[type=creeper] ~ -512 ~
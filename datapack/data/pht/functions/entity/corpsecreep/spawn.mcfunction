summon wandering_trader ~ ~ ~ {DeathLootTable:"pht:entities/corpsecreep",HandDropChances:[-327.670F,-327.670F],CustomName:'{"translate":"pht.entity.corpsecreep"}',DeathTime:19s,Silent:1b,DespawnDelay:0,Tags:["pht.entity","pht.corpsecreep","smithed.entity","global.ignore"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Offers:{},ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.7}]}

execute if score #pht.tcc pht.dummy matches 1.. run team join tcc.antivillager @e[tag=pht.corpsecreep]
execute unless score #pht.tcc pht.dummy matches 1.. run team join pht.antivil @e[tag=pht.corpsecreep]

tp @s[type=creeper] ~ -512 ~
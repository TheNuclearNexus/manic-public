execute align xyz run summon wandering_trader ~0.5 ~ ~0.5 {NoAI:1b,Silent:1b,NoGravity:1b,DeathTime:19s,DeathLootTable:"minecraft:empty",Health:9999f,Willing:0b,Tags:["pht.entity","pht.corpsebloom","global.ignore"],HandItems:[{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360009}},{}],HandDropChances:[-327.670F,0.085F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9999}]}
playsound minecraft:block.fungus.place block @a
execute align xyz positioned ~0.5 ~ ~0.5 run scoreboard players set @e[tag=pht.corpsebloom,sort=nearest,limit=1] pht.dummy3 1

# Switch to global.antivillager when that gets made soon enough.
team join tcc.antivillager @e[tag=pht.corpsebloom,sort=nearest,limit=1]
playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1 0.5
particle block dark_oak_planks ~ ~ ~ 0.5 0.1 0.5 0 50 force
kill @s[type=armor_stand]

summon vindicator ~ ~ ~ {Motion:[0.0d,0.5d,0.0d],DeathTime:19s,Silent:1b,CustomNameVisible:0b,DeathLootTable:"pht:entities/keeper",PersistenceRequired:1b,CanPickUpLoot:0b,Health:300f,CanBreakDoors:1b,Tags:["pht.entity","pht.keeper","smithed.entity","pht.schizoid","global.ignore"],CustomName:'{"translate":"pht.entity.keeper","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360051}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:48},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.movement_speed,Base:0.26},{Name:generic.attack_damage,Base:15},{Name:generic.attack_knockback,Base:0.1}]}

effect give @e[tag=pht.keeper] slow_falling 999999 0 true

execute if score #pht.tcc pht.dummy matches 1.. run team join tcc.antivillager @e[tag=pht.keeper]
execute unless score #pht.tcc pht.dummy matches 1.. run team join pht.antivil @e[tag=pht.keeper]
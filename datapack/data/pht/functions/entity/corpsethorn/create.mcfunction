execute store result score @s pht.rotation run data get entity @p Rotation[0]

execute align xyz run summon wandering_trader ~0.5 ~ ~0.5 {Rotation:[90.0f,0.0f],NoAI:1b,Silent:1b,NoGravity:1b,DeathTime:19s,DeathLootTable:"minecraft:empty",Health:9999f,Willing:0b,Tags:["pht.entity","pht.corpsethorn","smithed.entity","smithed.block","pht.new_block","global.ignore","pht.corpsethorn.unbloomed"],HandItems:[{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360083}},{}],HandDropChances:[-327.670F,0.085F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9999}]}
execute as @e[tag=pht.corpsethorn] run data remove entity @s Offers.Recipes
playsound minecraft:block.fungus.place block @a

execute if score #pht.tcc pht.dummy matches 1.. run team join tcc.antivillager @e[tag=pht.new_block]
execute unless score #pht.tcc pht.dummy matches 1.. run team join pht.antivil @e[tag=pht.new_block]
tag @e[tag=pht.corpsepitcher,sort=nearest,limit=1] remove pht.new_block

scoreboard players reset @s pht.rotation

advancement grant @p[distance=..10,gamemode=!spectator] only pht:ingame/corpsethorn
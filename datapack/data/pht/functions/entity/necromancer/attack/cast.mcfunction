scoreboard players add @s pht.dummy3 1
particle minecraft:enchant ~ ~0.75 ~ 0.5 1 0.5 0.1 10
particle minecraft:scrape ~ ~0.75 ~ 0.5 1 0.5 0.1 5

playsound minecraft:block.sculk_sensor.clicking block @a ~ ~ ~ 1 1.5
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360026}}],Marker:1b,Invisible:1b,Tags:["pht.evil_trail","pht.entity"]}
execute as @e[tag=pht.evil_trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator]
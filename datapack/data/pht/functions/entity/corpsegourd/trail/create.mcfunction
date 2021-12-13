playsound minecraft:block.sculk_sensor.clicking block @a ~ ~ ~ 1 1.5

summon armor_stand ~ ~ ~ {Fire:1000000,HasVisualFire:0b,ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360026}}],Marker:1b,Invisible:1b,Tags:["pht.trail","pht.entity"]}

execute store result score @s pht.dummy4 run data get entity @s Rotation[0]
execute if score @s pht.dummy4 matches 270 run execute as @e[tag=pht.trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 180 ~
execute if score @s pht.dummy4 matches 180 run execute as @e[tag=pht.trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 90 ~
execute if score @s pht.dummy4 matches 90 run execute as @e[tag=pht.trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 0 ~
execute if score @s pht.dummy4 matches -90 run execute as @e[tag=pht.trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ -90 ~
execute if score @s pht.dummy4 matches 0 run execute as @e[tag=pht.trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ -90 ~

tag @s remove pht.corpsegourd.sappy
execute if entity @s[tag=pht.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360024}
execute unless entity @s[tag=pht.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360019}
tag @s add pht.powered
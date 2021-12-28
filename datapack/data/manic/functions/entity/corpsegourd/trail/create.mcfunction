playsound manic:entity.ray.sanity_cast block @a ~ ~ ~ 1

execute store result score @s manic.dummy4 run data get entity @s Rotation[0]
execute if score @s manic.dummy4 matches 90 run summon armor_stand ~ ~ ~ {Rotation:[0.0f,0.0f],Fire:1000000,HasVisualFire:0b,ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360026}}],Marker:1b,Invisible:1b,Tags:["manic.trail","manic.entity"]}
execute if score @s manic.dummy4 matches 180 run summon armor_stand ~ ~ ~ {Rotation:[90.0f,0.0f],Fire:1000000,HasVisualFire:0b,ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360026}}],Marker:1b,Invisible:1b,Tags:["manic.trail","manic.entity"]}
execute if score @s manic.dummy4 matches 270 run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],Fire:1000000,HasVisualFire:0b,ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360026}}],Marker:1b,Invisible:1b,Tags:["manic.trail","manic.entity"]}
execute if score @s manic.dummy4 matches 0 run summon armor_stand ~ ~ ~ {Rotation:[270.0f,0.0f],Fire:1000000,HasVisualFire:0b,ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360026}}],Marker:1b,Invisible:1b,Tags:["manic.trail","manic.entity"]}

execute if score @s manic.dummy4 matches -90 run execute as @e[tag=manic.trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ -90 ~
execute if score @s manic.dummy4 matches 0 run execute as @e[tag=manic.trail,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ -90 ~

tag @s remove manic.corpsegourd.sappy
execute if entity @s[tag=manic.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360024}
execute unless entity @s[tag=manic.corpsegourd.sheared] run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360019}
tag @s add manic.powered
## Hurt Detection
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound manic:entity.keeper.hurt hostile @a ~ ~ ~ 1 0.1

## Frames A
execute if entity @s[tag=!manic.hurt] run execute as @e[type=minecraft:armor_stand,distance=..6,limit=5,tag=manic.keeper.kiko_element] run data modify entity @s ArmorItems[3].tag.display.color set value 16777215
execute if entity @s[tag=manic.hurt] run execute as @e[type=minecraft:armor_stand,distance=..6,limit=5,tag=manic.keeper.kiko_element] run data modify entity @s ArmorItems[3].tag.display.color set value 16742520

## Model Ticking
tp @e[type=minecraft:marker,limit=1,sort=nearest,tag=manic.keeper.root,distance=..200] ~ ~ ~ ~ ~
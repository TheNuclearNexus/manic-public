playsound manic:entity.keeper.charge hostile @a ~ ~ ~ 1.4
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1.4 0.75
tp @s ~ ~ ~ facing entity @p
execute as @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p
summon marker ^ ^ ^.2 {Tags:["manic.entity","smithed.entity","manic.keeper.motion"]}
execute store result score @s manic.dummy3 run data get entity @s Pos[0] 100
execute store result score @s manic.dummy4 run data get entity @s Pos[2] 100
execute store result score @s manic.dummy5 run data get entity @e[type=minecraft:marker,tag=manic.keeper.motion,limit=1,sort=nearest] Pos[0] 100
execute store result score @s manic.dummy6 run data get entity @e[type=minecraft:marker,tag=manic.keeper.motion,limit=1,sort=nearest] Pos[2] 100
scoreboard players operation @s manic.dummy3 -= @s manic.dummy5
scoreboard players operation @s manic.dummy4 -= @s manic.dummy6
execute store result entity @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] Motion[0] double -0.25 run scoreboard players get @s manic.dummy3
execute store result entity @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] Motion[2] double -0.25 run scoreboard players get @s manic.dummy4
data modify entity @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] Motion[1] set value 0.2d
kill @e[type=minecraft:marker,tag=manic.keeper.motion,limit=1,sort=nearest]
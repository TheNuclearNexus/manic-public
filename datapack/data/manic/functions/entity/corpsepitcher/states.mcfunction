tag @s remove manic.target
item modify entity @s weapon.mainhand manic:corpsepitcher/states
execute if score @s manic.pitcher matches 0 run playsound minecraft:block.big_dripleaf.tilt_down player @a[distance=0..16] ~ ~ ~ 1 0
execute if score @s manic.pitcher matches 1 run playsound minecraft:block.big_dripleaf.tilt_up player @a[distance=0..16] ~ ~ ~ 1 0
execute if score @s manic.pitcher matches 0..1 if block ~ ~ ~ light run setblock ~ ~ ~ air
execute if score @s manic.pitcher matches 2 run setblock ~ ~ ~ light[level=15]
execute if score @s manic.pitcher matches 2 run playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 1
execute if score @s manic.pitcher matches 3 run setblock ~ ~ ~ light[level=10]
execute if score @s manic.pitcher matches 3 run playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 0.4
execute if score @s manic.pitcher matches 4 run playsound minecraft:item.honey_bottle.drink player @a[distance=0..16] ~ ~ ~ 1.5 0.8
execute if score @s manic.pitcher matches 5 run playsound minecraft:item.bucket.empty player @a[distance=0..16] ~ ~ ~ 1 1.25
execute if score @s manic.pitcher matches 6 run playsound minecraft:block.brewing_stand.brew player @a[distance=0..16] ~ ~ ~ 0.5 1.5
execute if score @s manic.pitcher matches 7 run setblock ~ ~ ~ light[level=5]
execute if score @s manic.pitcher matches 9 run playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..16] ~ ~ ~ 1 2




#playsound minecraft:item.honey_bottle.drink player @a[distance=0..16] ~ ~ ~ 1.5 0.8
#playsound minecraft:item.bucket.empty player @a[distance=0..16] ~ ~ ~ 1 1.75
#playsound minecraft:block.big_dripleaf.tilt_up player @a[distance=0..16] ~ ~ ~ 1 0
#particle minecraft:soul_fire_flame ~ ~1.10 ~ 0.25 0 0.25 0.03 4
#playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 0.4
#particle minecraft:lava ~ ~1 ~ 0 0 0 0.1 3
#playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 1
#playsound minecraft:block.big_dripleaf.tilt_down player @a[distance=0..16] ~ ~ ~ 1 0

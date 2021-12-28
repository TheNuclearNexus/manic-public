scoreboard players add @s manic.dummy 1

## Particles
execute if score @s manic.dummy matches 1 run particle dust_color_transition 0.102 1.000 0.000 2 0.114 0.212 0.176 ~ ~0.75 ~ 0.5 0.5 0.5 2 25 force
execute if score @s manic.dummy matches 1 run playsound manic:entity.spawn_marker.spawn hostile @a ~ ~ ~ 2 1
execute if score @s manic.dummy matches 1 run summon armor_stand ~ ~ ~ {Fire:1000000,HasVisualFire:0b,ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360094}}],Marker:1b,Invisible:1b,Tags:["manic.schizoid_portal"]}
execute if score @s manic.dummy matches 1.. run particle dust_color_transition 0.102 1.000 0.000 0.5 0.114 0.212 0.176 ~ ~0.1 ~ 0.25 0.25 0.25 1 3 force

execute if score @s manic.dummy matches 100.. run function #manic:entity/spawn_marker/activate
execute if score @s manic.dummy matches 100.. run kill @s
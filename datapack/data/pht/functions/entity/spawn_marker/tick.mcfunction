scoreboard players add @s pht.dummy 1

## Particles
execute if score @s pht.dummy matches 1 run particle dust_color_transition 0.102 1.000 0.000 2 0.114 0.212 0.176 ~ ~0.75 ~ 0.5 0.5 0.5 2 25 force
execute if score @s pht.dummy matches 1 run playsound minecraft:block.portal.ambient block @a ~ ~ ~ 2 1
execute if score @s pht.dummy matches 1.. run particle dust_color_transition 0.102 1.000 0.000 2 0.114 0.212 0.176 ~ ~0.75 ~ 0.25 0.25 0.25 2 3 force

execute if score @s pht.dummy matches 100.. run function #pht:entity/spawn_marker/activate
execute if score @s pht.dummy matches 100.. run kill @s
## ^^^ cope. this is necessary for ensuring that things dont get fucked up if datapacks are put in the wrong order.
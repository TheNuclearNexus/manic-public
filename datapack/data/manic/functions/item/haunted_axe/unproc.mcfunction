particle soul ~ ~1.5 ~ 0.5 0.5 0.5 0.1 3
playsound manic:item.haunted_axe.end player @a

attribute @s minecraft:generic.movement_speed modifier remove 8-3-6-2-0
attribute @s minecraft:generic.attack_speed modifier remove 8-3-6-2-0

scoreboard players reset @s manic.axetime
scoreboard players reset @s manic.axekills
tag @s remove manic.haunted_axe

effect give @s weakness 6 2
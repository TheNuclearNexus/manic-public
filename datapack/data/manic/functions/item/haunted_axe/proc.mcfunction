particle soul ~ ~1.5 ~ 0.5 0.5 0.5 0.1 5
playsound manic:item.haunted_axe.start player @a

attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-0 manic.speed 0.1 add
attribute @s minecraft:generic.attack_speed modifier add 8-3-6-2-0 manic.attack_speed 1.25 add

scoreboard players set @s manic.axetime 70
scoreboard players remove @s[gamemode=!creative] manic.sanity 10

tag @s add manic.haunted_axe
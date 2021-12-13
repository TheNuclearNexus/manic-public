particle soul ~ ~1.5 ~ 0.5 0.5 0.5 0.1 5
playsound pht:item.haunted_axe.start player @a

attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-0 pht.speed 0.1 add
attribute @s minecraft:generic.attack_speed modifier add 8-3-6-2-0 pht.attack_speed 1.25 add

scoreboard players set @s pht.axetime 70
scoreboard players remove @s[gamemode=!creative] pht.sanity 10

tag @s add pht.haunted_axe
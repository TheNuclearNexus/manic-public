data modify entity @s Rotation[1] set value 0f
scoreboard players operation #kiko_fp kiko.id = @s kiko.id
execute at @s positioned ~ ~-1.818 ~ run function manic:animations/keeper/slam/bst/1
scoreboard players add @s kiko.frame 1

execute if score @s kiko.frame matches 50 run execute as @e[distance=..25,type=#manic:kiko_element,tag=kiko.element,tag=manic.keeper.kiko_element] if score @s kiko.id = #kiko_fp kiko.id run function manic:animations/keeper/charge/frame_50
execute if score @s kiko.frame matches 47..49 run function manic:animations/keeper/charge/bst/27
execute if score @s kiko.frame matches 51..53 run function manic:animations/keeper/charge/bst/28
execute if score @s kiko.frame matches 116 run execute as @e[distance=..25,type=#manic:kiko_element,tag=kiko.element,tag=manic.keeper.kiko_element] if score @s kiko.id = #kiko_fp kiko.id run function manic:animations/keeper/death/frame_116
execute if score @s kiko.frame matches 100..115 run function manic:animations/keeper/death/bst/98
execute if score @s kiko.frame matches 117..132 run function manic:animations/keeper/death/bst/113
execute if score @s kiko.frame matches 37 run execute as @e[distance=..25,type=#manic:kiko_element,tag=kiko.element,tag=manic.keeper.kiko_element] if score @s kiko.id = #kiko_fp kiko.id run function manic:animations/keeper/stun/frame_37
execute if score @s kiko.frame matches 25..36 run function manic:animations/keeper/stun/bst/19
execute if score @s kiko.frame matches 38..49 run function manic:animations/keeper/stun/bst/26
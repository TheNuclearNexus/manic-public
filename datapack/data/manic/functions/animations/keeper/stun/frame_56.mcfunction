execute as @s[tag=manic.keeper.torso] run function manic:animations/keeper/stun/torso/56
execute as @s[tag=manic.keeper.leftarm] run function manic:animations/keeper/stun/leftarm/56
execute as @s[tag=manic.keeper.rightarm] run function manic:animations/keeper/stun/rightarm/56
execute as @s[tag=manic.keeper.head] run function manic:animations/keeper/stun/head/56
execute as @s[tag=manic.keeper.jaw] run function manic:animations/keeper/stun/jaw/56
execute if entity @s[type=minecraft:armor_stand] run data modify entity @s Rotation[0] set from entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud] Rotation[0]
execute if entity @s[type=minecraft:area_effect_cloud] run execute store result entity @s Air short 1 run time query gametime

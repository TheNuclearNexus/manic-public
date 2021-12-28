execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run kill @e[type=marker,tag=manic.keeper.vacuum,limit=1,sort=nearest,distance=..6]
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.walk
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.summon
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.bite
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.launch
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.charge
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.slam
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.stun
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute as @s[tag=manic.keeper.torso] run function manic:animations/keeper/death/torso/0
execute as @s[tag=manic.keeper.leftarm] run function manic:animations/keeper/death/leftarm/0
execute as @s[tag=manic.keeper.rightarm] run function manic:animations/keeper/death/rightarm/0
execute as @s[tag=manic.keeper.head] run function manic:animations/keeper/death/head/0
execute as @s[tag=manic.keeper.jaw] run function manic:animations/keeper/death/jaw/0
execute if entity @s[type=minecraft:armor_stand] run data modify entity @s Rotation[0] set from entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud] Rotation[0]
execute if entity @s[type=minecraft:area_effect_cloud] run execute store result entity @s Air short 1 run time query gametime

playsound manic:entity.keeper.hurt hostile @a ~ ~ ~ 1 0.1
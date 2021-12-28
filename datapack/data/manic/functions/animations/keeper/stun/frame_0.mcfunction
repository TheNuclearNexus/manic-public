execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.animation.charge
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run tag @s remove manic.keeper.hurt
execute as @s[type=marker] positioned ~ ~1.818 ~ positioned ^0 ^0 ^0 run effect give @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] minecraft:slowness 5 5 true
execute as @s[tag=manic.keeper.torso] run function manic:animations/keeper/stun/torso/0
execute as @s[tag=manic.keeper.leftarm] run function manic:animations/keeper/stun/leftarm/0
execute as @s[tag=manic.keeper.rightarm] run function manic:animations/keeper/stun/rightarm/0
execute as @s[tag=manic.keeper.head] run function manic:animations/keeper/stun/head/0
execute as @s[tag=manic.keeper.jaw] run function manic:animations/keeper/stun/jaw/0
execute if entity @s[type=minecraft:armor_stand] run data modify entity @s Rotation[0] set from entity @e[limit=1,sort=nearest,type=minecraft:area_effect_cloud] Rotation[0]
execute if entity @s[type=minecraft:area_effect_cloud] run execute store result entity @s Air short 1 run time query gametime

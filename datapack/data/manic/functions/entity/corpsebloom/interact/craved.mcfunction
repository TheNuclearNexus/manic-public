tag @s remove manic.target
scoreboard players add @s manic.satisfied 1
execute if predicate manic:corpsebloom/uncommon_craving run scoreboard players set @s manic.default -1
execute if predicate manic:corpsebloom/common_craving run scoreboard players set @s manic.default -1
execute if score @s manic.default matches -1 run function manic:entity/corpsebloom/age/advance
playsound entity.generic.eat block @a[distance=0..16] ~ ~ ~ 0.25 0.4
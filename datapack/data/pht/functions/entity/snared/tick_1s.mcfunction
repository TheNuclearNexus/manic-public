scoreboard players add @s pht.dummy5 1
particle crit ~ ~0.75 ~ 0.25 0.5 0.25 0 10
playsound minecraft:entity.generic.death hostile @a
execute unless entity @e[tag=pht.corpsebloom.grown,distance=..11] run function pht:entity/snared/escape

execute if score @s pht.dummy5 matches 6.. run kill @s
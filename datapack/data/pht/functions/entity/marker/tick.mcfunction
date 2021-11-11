scoreboard players add @s pht.dummy 1
playsound minecraft:block.gravel.break block @a ~ ~ ~ 1 0.1
playsound minecraft:block.gravel.break block @a ~ ~ ~ 1.25 0.75
particle block dirt ~ ~ ~ 0.5 0.1 0.5 0.1 10
particle smoke ~ ~ ~ 0.5 0.5 0.5 0 8
particle soul_fire_flame ~ ~0.3 ~ 0.1 0.5 0.1 0 8

execute if score @s pht.dummy matches 5 run function pht:entity/marker/activate
scoreboard players add @s manic.default 1
particle crit ~ ~0.75 ~ 0.25 0.5 0.25 0 10

execute if entity @s[type=bee,scores={manic.default=6..}] run function manic:entity/zombee/spawn
execute if entity @s[type=creeper,scores={manic.default=6..}] if score @s manic.default matches 6.. run function manic:entity/corpsecreep/spawn
execute if score @s manic.default matches 6.. run function manic:entity/damage/death

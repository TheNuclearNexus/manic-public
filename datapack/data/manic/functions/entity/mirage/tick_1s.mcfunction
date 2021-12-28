execute if predicate manic:chance/third run playsound manic:entity.mirage.swim hostile @a ~ ~ ~ 0.5 0.75

execute unless score @s manic.default matches 0.. run scoreboard players set @s manic.default 8
execute if score @s manic.default matches 1.. run scoreboard players remove @s manic.default 1
execute if score @s manic.default matches 3.. if predicate manic:chance/coinflip run scoreboard players remove @s manic.default 1
execute if score @s[tag=!manic.mirage.disabled] manic.default matches ..0 if entity @a[distance=..48,gamemode=!creative,gamemode=!spectator] run function manic:entity/mirage/charge
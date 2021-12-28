particle minecraft:bubble ~ ~ ~ 0.5 0.5 0.5 0 100
playsound manic:entity.mirage.dash hostile @a ~ ~ ~ 1 0.75
scoreboard players set @s manic.default 8
execute if predicate manic:chance/third run scoreboard players set @s manic.default 1

scoreboard players add @s manic.default2 1
execute if score @s manic.default2 matches 2.. run scoreboard players set @s manic.default2 0

execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["manic.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=manic.direction,limit=1] Pos
kill @e[tag=manic.direction]
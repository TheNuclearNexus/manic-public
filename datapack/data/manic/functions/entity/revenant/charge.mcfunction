particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0.1 3
playsound manic:entity.revenant.dash hostile @a
scoreboard players set @s manic.revenant 15
execute if predicate manic:chance/fourth run scoreboard players set @s manic.revenant 1

execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0 0.0 run summon marker ^ ^ ^1.25 {Tags:["manic.direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=manic.direction,limit=1] Pos
kill @e[tag=manic.direction]
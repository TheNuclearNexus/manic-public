execute if score @s kiko.frame matches 4 run summon marker ~ ~ ~ {Tags:["manic.entity","smithed.entity","manic.keeper.vacuum"]}
effect give @p[distance=..2,gamemode=!creative,gamemode=!spectator] slowness 2 2 true
tp @e[type=marker,tag=manic.keeper.vacuum,limit=1,sort=nearest] ~ ~ ~
execute as @a[distance=..4,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[type=marker,tag=manic.keeper.vacuum,limit=1,sort=nearest] eyes run tp @s ^ ^ ^.3
particle minecraft:squid_ink ~ ~ ~ .3 .3 .3 0 1 normal
particle dust 0.012 1.000 0.012 2 ~ ~ ~ .3 .3 .3 0 1 normal
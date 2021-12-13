execute unless entity @a[distance=..10,gamemode=!spectator] run function pht:entity/chitter/delete
execute facing entity @p[gamemode=!spectator,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
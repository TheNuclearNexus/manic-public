execute unless score @s manic.safe_time matches 1.. run scoreboard players remove @s[type=player,gamemode=!creative,gamemode=!spectator] manic.sanity 5
tag @s add manic.damage.mad_fire
scoreboard players set @s[gamemode=!creative,gamemode=!spectator] manic.damage 2
execute as @s[type=player,gamemode=!creative,gamemode=!spectator] run function manic:player/damage/apply
execute as @s[type=!player] run function manic:entity/damage/apply
tag @s remove manic.damage.mad_fire

scoreboard players set @e[tag=manic.mad_fire,sort=nearest,limit=1] manic.default 10
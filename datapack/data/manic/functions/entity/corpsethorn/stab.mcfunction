tag @s add manic.damage.corpsethorn
scoreboard players set @e[distance=0..1,gamemode=!creative,gamemode=!spectator] manic.damage 2
execute as @s[type=player,gamemode=!creative,gamemode=!spectator] run function manic:player/damage/apply/armor
execute as @s[type=!player] run function manic:entity/damage/apply
tag @s remove manic.damage.corpsethorn

scoreboard players set @e[tag=manic.corpsethorn,sort=nearest,limit=1] manic.default 15
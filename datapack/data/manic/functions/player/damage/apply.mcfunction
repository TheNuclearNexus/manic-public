function manic:player/damage/health/calculate_modifier
execute if score @s manic.damage >= #maximum_health manic.damage run function manic:player/damage/death
execute if score @s manic.damage < #maximum_health manic.damage run function manic:player/damage/health/update
scoreboard players reset @s manic.damage

execute at @s[tag=!manic.damage.mad_fire] run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
execute at @s[tag=manic.damage.mad_fire] run playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~ 1 1
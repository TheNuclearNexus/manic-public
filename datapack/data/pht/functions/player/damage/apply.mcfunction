function pht:player/damage/health/calculate_modifier
execute if score @s pht.damage >= #maximum_health pht.damage run function pht:player/damage/death
execute if score @s pht.damage < #maximum_health pht.damage run function pht:player/damage/health/update
scoreboard players reset @s pht.damage

execute at @s run playsound minecraft:entity.player.hurt player @a[distance=0..16] ~ ~ ~ 1 1
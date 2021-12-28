scoreboard players reset @s manic.temp_sanity
############################################
execute unless predicate manic:location/safe_light run scoreboard players remove @s manic.temp_sanity 1
execute if predicate manic:location/the_nether run scoreboard players remove @s manic.temp_sanity 1
execute if predicate manic:location/soul_sand_valley run scoreboard players remove @s manic.temp_sanity 1
execute if predicate manic:location/the_end run scoreboard players remove @s manic.temp_sanity 2
execute if predicate manic:unsafe_light run scoreboard players remove @s manic.temp_sanity 1
execute if predicate manic:location/low_height run scoreboard players remove @s manic.temp_sanity 1
execute if predicate manic:location/mansion run scoreboard players remove @s manic.temp_sanity 3
execute if predicate manic:location/overworld if predicate manic:time/new_moon unless predicate manic:location/low_height run scoreboard players remove @s manic.temp_sanity 3

execute store result score @s manic.dummy run data get entity @s foodLevel
execute if score @s manic.dummy matches ..6 run scoreboard players remove @s manic.temp_sanity 1
execute if score @s manic.dummy matches 0 run scoreboard players remove @s manic.temp_sanity 2

execute store result score @s manic.dummy run data get entity @s Health
execute if score @s manic.dummy matches ..2 run scoreboard players remove @s manic.temp_sanity 2

execute if predicate manic:location/overworld unless score #manic.difficulty manic.dummy matches 3 run execute if score @s manic.last_sleep matches 72000.. run scoreboard players remove @s manic.temp_sanity 1
execute if predicate manic:location/overworld if score #manic.difficulty manic.dummy matches 3 run function manic:player/hard_mode_sanity
execute if score #eit eit.blood_moon matches 1 unless predicate manic:location/the_nether unless predicate manic:location/the_end run scoreboard players remove @s manic.temp_sanity 3
############################################
scoreboard players reset @s manic.leather
execute if predicate manic:equipped/leather_helmet run scoreboard players add @s manic.leather 1
execute if predicate manic:equipped/leather_chestplate run scoreboard players add @s manic.leather 1
execute if predicate manic:equipped/leather_leggings run scoreboard players add @s manic.leather 1
execute if predicate manic:equipped/leather_boots run scoreboard players add @s manic.leather 1
############################################
execute if score #manic.difficulty manic.dummy matches 1 if score @s manic.temp_sanity matches ..-2 run scoreboard players set @s manic.temp_sanity -2
execute if score #manic.difficulty manic.dummy matches 2 if score @s manic.temp_sanity matches ..-3 run scoreboard players set @s manic.temp_sanity -3
execute if score #manic.difficulty manic.dummy matches 3 if score @s manic.temp_sanity matches ..-4 run scoreboard players set @s manic.temp_sanity -4
execute if score @s manic.leather matches 2.. unless score @s manic.temp_sanity matches -1 run scoreboard players add @s manic.temp_sanity 1
scoreboard players operation @s manic.sanity += @s manic.temp_sanity
scoreboard players reset @s pht.temp_sanity
############################################
execute unless predicate pht:safe_light run scoreboard players remove @s pht.temp_sanity 1
execute unless entity @e[distance=..16,type=#pht:sanity_increase] if predicate pht:in_the_nether run scoreboard players remove @s pht.temp_sanity 1
execute unless entity @e[distance=..16,type=#pht:sanity_increase] if predicate pht:in_the_end run scoreboard players remove @s pht.temp_sanity 2
execute if entity @e[distance=..16,type=#pht:sanity_increase] if predicate pht:in_the_end run scoreboard players remove @s pht.temp_sanity 1
execute if predicate pht:unsafe_light run scoreboard players remove @s pht.temp_sanity 1
execute if predicate pht:low_height run scoreboard players remove @s pht.temp_sanity 1
execute unless entity @e[distance=..16,type=#pht:sanity_increase] if predicate pht:in_mansion run scoreboard players remove @s pht.temp_sanity 3
execute if entity @e[distance=..16,type=#pht:sanity_increase] if predicate pht:in_mansion run scoreboard players remove @s pht.temp_sanity 2

execute store result score @s pht.dummy run data get entity @s foodLevel
execute if score @s pht.dummy matches ..6 run scoreboard players remove @s pht.temp_sanity 1
execute if score @s pht.dummy matches ..1 run scoreboard players remove @s pht.temp_sanity 4

execute store result score @s pht.dummy run data get entity @s Health
execute if score @s pht.dummy matches ..6 run scoreboard players remove @s pht.temp_sanity 1
execute if score @s pht.dummy matches ..3 run scoreboard players remove @s pht.temp_sanity 1

execute unless score #pht.difficulty pht.dummy matches 3 run execute if score @s pht.last_sleep matches 72000.. run scoreboard players remove @s pht.temp_sanity 1
execute if score #pht.difficulty pht.dummy matches 3 run function pht:player/hard_mode_sanity
execute if score #eit eit.blood_moon matches 1 unless predicate pht:in_the_nether unless predicate pht:in_the_end run scoreboard players remove @s pht.temp_sanity 3
############################################
execute if score #pht.difficulty pht.dummy matches 1 if score @s pht.temp_sanity matches ..-2 run scoreboard players set @s pht.temp_sanity -2
execute if score #pht.difficulty pht.dummy matches 2 if score @s pht.temp_sanity matches ..-3 run scoreboard players set @s pht.temp_sanity -3
execute if score #pht.difficulty pht.dummy matches 3 if score @s pht.temp_sanity matches ..-4 run scoreboard players set @s pht.temp_sanity -4
scoreboard players operation @s pht.sanity += @s pht.temp_sanity
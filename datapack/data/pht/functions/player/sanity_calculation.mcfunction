scoreboard players remove @s pht.sanity 1
execute if predicate pht:in_the_nether run scoreboard players remove @s pht.sanity 1
execute if predicate pht:in_the_end run scoreboard players remove @s pht.sanity 2
execute if predicate pht:unsafe_light run scoreboard players remove @s pht.sanity 1
execute if predicate pht:low_height run scoreboard players remove @s pht.sanity 1

execute store result score @s pht.dummy run data get entity @s foodLevel
execute if score @s pht.dummy matches ..6 run scoreboard players remove @s pht.sanity 1
execute if score @s pht.dummy matches ..1 run scoreboard players remove @s pht.sanity 4

#execute store result score @s pht.dummy run data get entity @s foodSaturationLevel
#execute if score @s pht.dummy matches 17.. run scoreboard players add @s pht.sanity 1

execute store result score @s pht.dummy run data get entity @s Health
execute if score @s pht.dummy matches ..6 run scoreboard players remove @s pht.sanity 1
execute if score @s pht.dummy matches ..3 run scoreboard players remove @s pht.sanity 1

execute if predicate pht:safe_light run scoreboard players add @s pht.sanity 1

execute unless score #pht.difficulty pht.dummy matches 3 run execute if score @s pht.last_sleep matches 72000.. run scoreboard players remove @s pht.sanity 1
execute if score #pht.difficulty pht.dummy matches 3 run function pht:player/hard_mode_sanity
execute if score #eit eit.blood_moon matches 1 unless predicate pht:in_the_nether unless predicate pht:in_the_end run scoreboard players remove @s pht.sanity 2
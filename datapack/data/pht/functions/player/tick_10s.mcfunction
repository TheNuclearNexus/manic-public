## Schizoid Spawning
scoreboard players reset #pht.counter pht.dummy
execute if score @s pht.sanity matches ..2222 as @e[tag=pht.decay,distance=..36] run scoreboard players add @s pht.entitycount 1

execute if predicate pht:chance/bulk_spawn unless score @s pht.entitycount matches 3.. if score @s pht.sanity matches ..2222 unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] unless score @s pht.safe_time matches 1.. run function pht:player/spawn_init

execute if predicate pht:in_overworld if predicate pht:daytime unless score #pht.insom_delay pht.dummy matches 1.. unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] if predicate pht:chance/trader_spawn if score @s pht.sanity matches ..2222 run function pht:player/spawning/insomniac

############################################################################################

## Pet Sanity
execute if entity @e[distance=..16,type=#pht:sanity_increase] run scoreboard players add @s pht.sanity 3

## Mansion Checks
execute if predicate pht:in_mansion unless score #pht.mansion pht.dummy matches 1.. if predicate pht:chance/keeper_haunt unless entity @e[tag=pht.keeper] run function pht:entity/keeper/locate

## Sanity Audio
execute if score @s pht.sanity matches ..2222 unless score @s pht.dummy6 matches 1.. run playsound pht:ambience.waning ambient @s ~ ~ ~ 100 0
execute if score @s pht.sanity matches ..1111 unless score @s pht.dummy6 matches 1.. run playsound pht:ambience.insane ambient @s ~ ~ ~ 100 0
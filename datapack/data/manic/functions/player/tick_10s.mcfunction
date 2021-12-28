## Schizoid Spawning
scoreboard players reset #manic.counter manic.dummy
execute if score @s manic.sanity matches ..2222 as @e[tag=manic.decay,distance=..36] run scoreboard players add @s manic.entitycount 1

execute if score #manic.difficulty manic.dummy matches 1 if predicate manic:chance/spawning/easy unless score @s manic.entitycount matches 3.. if score @s manic.sanity matches ..2222 unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] unless score @s manic.safe_time matches 1.. run function manic:player/spawn_init
execute if score #manic.difficulty manic.dummy matches 2 if predicate manic:chance/spawning/normal unless score @s manic.entitycount matches 3.. if score @s manic.sanity matches ..2222 unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] unless score @s manic.safe_time matches 1.. run function manic:player/spawn_init
execute if score #manic.difficulty manic.dummy matches 3 if predicate manic:chance/spawning/hard unless score @s manic.entitycount matches 3.. if score @s manic.sanity matches ..2222 unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] unless score @s manic.safe_time matches 1.. run function manic:player/spawn_init

execute if predicate manic:location/overworld if predicate manic:time/daytime unless score #manic.insom_delay manic.dummy matches 1.. unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] if predicate manic:chance/trader_spawn if score @s manic.sanity matches ..2222 run function manic:entity/insomniac/marker/spawn

execute if predicate manic:location/nether unless score #manic.monk_delay manic.dummy matches 1.. unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] if predicate manic:chance/trader_spawn if score @s manic.sanity matches ..5555 run function manic:entity/monk/marker/spawn

############################################################################################

## Pet Sanity
execute if entity @e[distance=..16,type=#manic:sanity_increase] run scoreboard players add @s manic.sanity 4

## Mansion Checks
execute if predicate manic:location/mansion if score @s manic.mansioncheck matches 30.. unless score #manic.mansion manic.dummy matches 1.. if predicate manic:chance/keeper_haunt unless entity @e[tag=manic.keeper] run function manic:entity/keeper/locate
execute if predicate manic:location/mansion run scoreboard players add @s manic.mansioncheck 1
execute if score @s manic.mansioncheck matches 1.. unless predicate manic:location/mansion run scoreboard players remove @s manic.mansioncheck 1

## Sanity Audio
execute if score @s manic.sanity matches ..2222 unless score @s manic.dummy6 matches 1.. run playsound manic:ambience.waning ambient @s ~ ~ ~ 100 0
execute if score @s manic.sanity matches ..1111 unless score @s manic.dummy6 matches 1.. run playsound manic:ambience.insane ambient @s ~ ~ ~ 100 0
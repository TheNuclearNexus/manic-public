execute if score @s pht.sanity matches ..2222 if predicate pht:unsafe_light run tag @s add pht.dummy_spawn
execute if score @s pht.sanity matches ..2222 if predicate pht:night if predicate pht:in_overworld run tag @s add pht.dummy_spawn
execute if score @s pht.sanity matches ..2222 if predicate pht:low_height run tag @s add pht.dummy_spawn
execute if score @s pht.sanity matches ..2222 if predicate pht:in_the_end run tag @s add pht.dummy_spawn
execute if entity @s[tag=pht.dummy_spawn] if predicate pht:chance/bulk_spawn unless entity @e[tag=pht.decay,distance=..30] run function pht:player/spawning/spawn_init
execute unless entity @s[tag=pht.dummy_spawn] if predicate pht:chance/trader_spawn unless entity @e[tag=pht.insomniac,distance=..30] run function pht:player/spawning/insomniac
tag @s remove pht.dummy_spawn

execute if score @s pht.sanity matches ..2222 unless score #pht.display pht.dummy3 matches 1 unless score @s pht.dummy6 matches 1.. run playsound pht:pht.ambience.echo ambient @s ~ ~ ~ 100 0

## Pet Sanity
execute if entity @e[type=#pht:sanity_increase,distance=..10] run scoreboard players add @s pht.sanity 3
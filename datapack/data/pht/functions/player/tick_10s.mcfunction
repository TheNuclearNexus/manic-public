execute if score @s pht.sanity matches ..2222 if predicate pht:unsafe_light run tag @s add pht.dummy_spawn
execute if score @s pht.sanity matches ..2222 if predicate pht:night if predicate pht:in_overworld run tag @s add pht.dummy_spawn
execute if score @s pht.sanity matches ..2222 if predicate pht:low_height run tag @s add pht.dummy_spawn
execute if score @s pht.sanity matches ..2222 if predicate pht:in_the_end run tag @s add pht.dummy_spawn
execute if entity @s[tag=pht.dummy_spawn] if predicate pht:chance/bulk_spawn unless entity @e[tag=pht.decay,distance=..30] run function pht:player/spawning/spawn_init
tag @s remove pht.dummy_spawn
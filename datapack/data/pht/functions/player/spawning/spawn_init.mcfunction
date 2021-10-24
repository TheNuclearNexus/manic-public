execute if predicate pht:in_the_nether run tag @s add pht.lock
execute if predicate pht:safe_light run tag @s add pht.lock
execute if entity @e[tag=pht.decay,distance=..25] run tag @s add pht.lock
execute if entity @s[gamemode=creative] run tag @s add pht.lock
execute if entity @s[gamemode=spectator] run tag @s add pht.lock

tag @s add pht.spawn_phantom
execute if predicate pht:underground run tag @s remove pht.spawn_phantom
execute if predicate pht:chance/coinflip run tag @s remove pht.spawn_phantom

execute if entity @s[tag=pht.spawn_phantom] unless entity @s[tag=pht.lock] run function pht:player/spawning/phantoms
execute unless entity @s[tag=pht.spawn_phantom] unless entity @s[tag=pht.lock] run function pht:player/spawning/necromorphs

tag @s remove pht.lock
tag @s remove pht.spawn_phantom
tag @s add pht.gelatin
execute if predicate pht:in_the_nether run tag @s add pht.nether
execute if entity @e[tag=pht.decay,distance=..25] run tag @s add pht.lock

tag @s add pht.spawn_phantom
execute if predicate pht:underground run tag @s remove pht.spawn_phantom
execute if predicate pht:chance/coinflip run tag @s remove pht.spawn_phantom

execute if entity @s[tag=pht.spawn_phantom] unless entity @s[tag=pht.lock] unless entity @s[tag=pht.nether] run function pht:player/spawning/phantoms
execute unless entity @s[tag=pht.spawn_phantom] unless score #eit eit.blood_moon matches 1 unless entity @s[tag=pht.lock] unless entity @s[tag=pht.nether] run function pht:player/spawning/necromorphs
execute unless entity @s[tag=pht.spawn_phantom] if score #eit eit.blood_moon matches 1 unless entity @s[tag=pht.lock] unless entity @s[tag=pht.nether] run function pht:player/spawning/revenants_overworld
execute if entity @s[tag=pht.nether] unless entity @s[tag=pht.lock] run function pht:player/spawning/revenants

tag @s remove pht.lock
tag @s remove pht.spawn_phantom
tag @s remove pht.nether
tag @s remove pht.gelatin
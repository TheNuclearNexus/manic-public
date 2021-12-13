execute if predicate pht:in_overworld run tag @s add pht.overworld
execute if predicate pht:in_the_nether run tag @s add pht.nether
execute if predicate pht:in_the_end run tag @s add pht.end
#execute if predicate pht:safe_light unless entity @s[tag=pht.gelatin] run tag @s add pht.lock
execute if entity @e[tag=pht.decay,distance=..25] unless entity @s[tag=pht.gelatin] run tag @s add pht.lock
execute if entity @s[gamemode=creative] unless entity @s[tag=pht.gelatin] run tag @s add pht.lock
execute if entity @s[gamemode=spectator] unless entity @s[tag=pht.gelatin] run tag @s add pht.lock

tag @s add pht.spawn_phantom
execute if predicate pht:underground run tag @s remove pht.spawn_phantom
execute if predicate pht:chance/coinflip run tag @s remove pht.spawn_phantom

execute if entity @s[tag=pht.spawn_phantom,tag=pht.overworld] unless entity @s[tag=pht.lock] run function pht:player/spawning/phantoms
execute unless entity @s[tag=pht.spawn_phantom] if entity @s[tag=pht.overworld] unless score #eit eit.blood_moon matches 1 unless entity @s[tag=pht.lock] run function pht:player/spawning/necromorphs
execute unless entity @s[tag=pht.spawn_phantom] if score #eit eit.blood_moon matches 1 if entity @s[tag=pht.overworld] unless entity @s[tag=pht.lock] unless entity @s[tag=pht.nether] run function pht:player/spawning/revenants_overworld
execute if entity @s[tag=pht.nether] unless entity @s[tag=pht.lock] run function pht:player/spawning/revenants
execute if entity @s[tag=pht.end] unless entity @s[tag=pht.lock] run function pht:player/spawning/eidolons

tag @s remove pht.lock
tag @s remove pht.spawn_phantom
tag @s remove pht.overworld
tag @s remove pht.nether
tag @s remove pht.end
tag @s remove pht.gelatin
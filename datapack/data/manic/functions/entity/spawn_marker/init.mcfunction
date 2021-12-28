## Spread
execute if predicate manic:range/over_128 run spreadplayers ~ ~ 1 15 false @s
execute if predicate manic:range/96_to_128 run spreadplayers ~ ~ 1 15 under 127 false @s
execute if predicate manic:range/64_to_96 run spreadplayers ~ ~ 1 15 under 96 false @s
execute if predicate manic:range/32_to_64 run spreadplayers ~ ~ 1 15 under 64 false @s
execute if predicate manic:range/0_to_32 run spreadplayers ~ ~ 1 12 under 32 false @s
execute if predicate manic:range/-64_to_0 run spreadplayers ~ ~ 1 10 under 0 false @s

# Phantoms
execute store result score @s manic.entitycount if blocks ~ ~ ~ ~ 319 ~ ~ ~ ~ masked
execute if predicate manic:location/overworld unless score @s manic.entitycount matches 1.. if predicate manic:chance/third unless predicate manic:time/daytime run tag @s add manic.is_phantom

# Detect Environmental Changes
execute if score #eit eit.blood_moon matches 1.. if predicate manic:location/overworld run tag @s add manic.blood_moon
execute if score #sanguine.blood_moon sanguine.dummy matches 1 if predicate manic:location/overworld run tag @s add manic.blood_moon
execute if predicate manic:time/new_moon if predicate manic:location/overworld run tag @s add manic.new_moon

# Remaining Checks
execute if predicate manic:location/the_nether run tag @s add manic.is_revenant
execute if predicate manic:location/the_end run tag @s add manic.is_eidolon
execute if predicate manic:location/overworld run tag @s[tag=!manic.is_phantom] add manic.is_spook
execute if entity @s[tag=manic.is_spook] if entity @s[tag=manic.blood_moon] unless predicate manic:time/new_moon if predicate manic:chance/coinflip run function manic:entity/spawn_marker/swap_tags/revenant

execute if predicate manic:time/new_moon if entity @s[tag=manic.is_spook] if score #manic.wither_beat manic.dummy matches 1 if predicate manic:chance/coinflip run function manic:entity/spawn_marker/swap_tags/revenant
execute if predicate manic:time/new_moon if predicate manic:location/overworld if entity @s[tag=manic.is_spook] if score #manic.dragon_beat manic.dummy matches 1 if predicate manic:chance/fourth run function manic:entity/spawn_marker/swap_tags/eidolon

execute if entity @s[tag=manic.is_phantom] run function manic:entity/spawn_marker/swap_tags/phantom
execute if entity @s[tag=manic.is_phantom] at @s run tp @s ~ ~24 ~

## Kill-Off
execute at @s if entity @a[distance=..1] run function manic:entity/spawn_marker/detect_mirages
execute at @s if block ~ ~-1 ~ #manic:water_nonsolid run function manic:entity/spawn_marker/detect_mirages
execute at @s if entity @s[tag=manic.is_spook] if predicate manic:location/safe_light unless entity @a[tag=manic.gelatin,distance=..48] run kill @s
execute at @s if entity @s[tag=manic.is_spook] unless score @s manic.entitycount matches 1.. if predicate manic:time/daytime unless entity @a[tag=manic.gelatin,distance=..48] run kill @s

tag @s remove manic.spawn_marker.new
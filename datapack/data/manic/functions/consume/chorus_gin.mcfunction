advancement revoke @s only manic:technical/consume/chorus_gin

execute if score @s manic.sanity matches 5555.. run scoreboard players remove @s manic.sanity 300
execute unless score @s manic.sanity matches 5555.. run scoreboard players add @s manic.sanity 300

execute if predicate manic:location/the_nether unless predicate manic:range/over_128 run spreadplayers ~ ~ 0 16 under 127 false @s
execute if predicate manic:location/the_nether if predicate manic:range/over_128 run spreadplayers ~ ~ 0 16 false @s
execute unless predicate manic:location/the_nether run spreadplayers ~ ~ 0 16 false @s

tag @s add manic.chorus_sfx
schedule function manic:item/chorus_gin/schedule 1t replace

effect give @s nausea 10
effect give @s regeneration 20 1
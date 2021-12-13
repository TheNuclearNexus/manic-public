advancement revoke @s only pht:consume/chorus_wine
scoreboard players add @s pht.sanity 80

execute if predicate pht:in_the_nether unless predicate pht:range/over_128 run spreadplayers ~ ~ 0 16 under 127 false @s
execute if predicate pht:in_the_nether if predicate pht:range/over_128 run spreadplayers ~ ~ 0 16 false @s
execute unless predicate pht:in_the_nether run spreadplayers ~ ~ 0 16 false @s

tag @s add pht.chorus_sfx
schedule function pht:item/chorus_wine/schedule 1t replace
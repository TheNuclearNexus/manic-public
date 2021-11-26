advancement revoke @s only pht:consume/raw_wart
effect give @s fire_resistance 15

scoreboard players add @s pht.sanity 10
execute if predicate pht:chance/raw_wart run tag @s add pht.raw_wart
execute if entity @s[tag=pht.raw_wart] run scoreboard players remove @s pht.sanity 40
execute if entity @s[tag=pht.raw_wart] run playsound minecraft:entity.witch.drink hostile @a
tag @s remove pht.raw_wart
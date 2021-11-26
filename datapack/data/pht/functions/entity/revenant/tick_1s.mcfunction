execute store result score @s pht.dummy6 run data get entity @s DrownedConversionTime
execute if score @s pht.dummy6 matches 1.. run effect give @s instant_health 1 0 true
execute if score @s pht.dummy6 matches 1..30 run kill @s

execute if predicate pht:chance/ambient run playsound block.soul_sand.break hostile @a ~ ~ ~ 0.5 0.5

effect give @s fire_resistance 999999 0 true
data remove entity @s Fire
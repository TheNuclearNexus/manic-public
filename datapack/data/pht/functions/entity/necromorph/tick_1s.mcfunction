execute store result score @s pht.dummy6 run data get entity @s DrownedConversionTime
execute if score @s pht.dummy6 matches 1.. run effect give @s instant_health 1 0 true
execute if score @s pht.dummy6 matches 1..30 run kill @s

execute if predicate pht:chance/ambient run playsound block.soul_sand.break hostile @a ~ ~ ~ 0.5 0.5

execute store result score @s pht.daylight run execute if blocks ~ ~ ~ ~ 319 ~ ~ ~ ~ masked
execute unless score @s pht.daylight matches 1.. if predicate pht:daytime unless predicate pht:in_the_end if predicate pht:chance/third run data modify entity @s Fire set value 150
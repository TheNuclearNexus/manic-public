execute store result score @s manic.dummy6 run data get entity @s DrownedConversionTime
execute if score @s manic.dummy6 matches 1.. run effect give @s instant_health 1 0 true
execute if score @s manic.dummy6 matches 1..30 run kill @s

execute if predicate manic:chance/ambient run playsound manic:entity.spook.ambient hostile @a ~ ~ ~ 0.5 0.5

execute store result score @s manic.daylight run execute if blocks ~ ~ ~ ~ 319 ~ ~ ~ ~ masked
execute unless score @s manic.daylight matches 1.. if predicate manic:time/daytime unless predicate manic:location/the_end unless predicate manic:location/the_nether if predicate manic:chance/coinflip run data modify entity @s Fire set value 150
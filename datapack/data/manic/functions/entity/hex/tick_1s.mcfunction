execute store result score @s manic.dummy6 run data get entity @s DrownedConversionTime
execute if score @s manic.dummy6 matches 1.. run effect give @s instant_health 1 0 true
execute if score @s manic.dummy6 matches 1..30 run kill @s

execute if predicate manic:chance/ambient run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 1.5
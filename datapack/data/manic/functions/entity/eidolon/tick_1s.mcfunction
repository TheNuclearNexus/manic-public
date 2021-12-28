execute if predicate manic:chance/fifth if entity @e[gamemode=!creative,gamemode=!spectator,distance=0..48] run function manic:entity/eidolon/track

execute store result score @s manic.daylight run execute if blocks ~ ~ ~ ~ 319 ~ ~ ~ ~ masked
execute unless score @s manic.daylight matches 1.. if predicate manic:time/daytime unless predicate manic:location/the_end unless predicate manic:location/the_nether if predicate manic:chance/coinflip run data modify entity @s Fire set value 150
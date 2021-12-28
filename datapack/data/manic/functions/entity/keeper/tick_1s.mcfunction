#execute store result score @s manic.dummy6 run data get entity @s DrownedConversionTime
#execute if score @s manic.dummy6 matches 1.. run function manic:entity/keeper/despawn

execute if predicate manic:chance/ambient run playsound manic:entity.keeper.idle hostile @a ~ ~ ~ 1

execute if predicate manic:chance/third unless entity @a[gamemode=!spectator,distance=..80] run function manic:entity/keeper/despawn
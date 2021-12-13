#execute store result score @s pht.dummy6 run data get entity @s DrownedConversionTime
#execute if score @s pht.dummy6 matches 1.. run function pht:entity/keeper/despawn

execute if predicate pht:chance/ambient run playsound minecraft:entity.ravager.ambient hostile @a ~ ~ ~ 1 0.1

execute unless score @s pht.keeper2 matches 1.. run scoreboard players add @s pht.keeper 1
execute unless score @s pht.keeper2 matches 1.. run execute if score @s pht.keeper matches 5 run function pht:entity/keeper/ai/charge
execute unless score @s pht.keeper2 matches 1.. run execute if score @s pht.keeper matches 6.. if predicate pht:chance/third run scoreboard players reset @s pht.keeper

execute if score @s pht.keeper2 matches 1.. run scoreboard players remove @s pht.keeper2 1
execute if entity @a[gamemode=!spectator,gamemode=!creative,distance=..2.5] unless score @s pht.keeper2 matches 1.. run function pht:entity/keeper/ai/grab_player
execute if score @s pht.keeper2 matches 3 run function pht:entity/keeper/ai/chew_player

execute if predicate pht:chance/third unless entity @a[gamemode=!spectator,distance=..80] run function pht:entity/keeper/despawn

execute if predicate pht:chance/coinflip unless score @s pht.keeper2 matches 1.. positioned ~ ~5 ~ if entity @a[gamemode=!spectator,gamemode=!creative,distance=..4] run effect give @s levitation 3 1 true

execute unless predicate pht:in_mansion run function pht:entity/keeper/despawn

execute if entity @e[type=#pht:illagers,distance=..2.5,tag=!smithed.entity] run function pht:entity/keeper/ai/eat_illager
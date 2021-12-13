execute store result score @s pht.dummy6 run data get entity @s DrownedConversionTime
execute if score @s pht.dummy6 matches 1.. run effect give @s instant_health 1 0 true
execute if score @s pht.dummy6 matches 1..30 run kill @s

execute if predicate pht:chance/ambient run playsound pht:entity.revenant.idle hostile @a ~ ~ ~

effect give @s fire_resistance 999999 0 true
data remove entity @s Fire

execute unless score @s pht.revenant matches 10.. if predicate pht:chance/revenant_charge if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] run function pht:entity/revenant/charge

execute unless score @s pht.revenant matches 0.. run scoreboard players set @s pht.revenant 15
execute if score @s pht.revenant matches 1.. run scoreboard players remove @s pht.revenant 1
execute if score @s pht.revenant matches 0 if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator] run function pht:entity/revenant/charge
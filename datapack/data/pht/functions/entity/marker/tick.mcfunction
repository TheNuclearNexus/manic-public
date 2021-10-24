execute unless score @s pht.dummy1 matches 1.. if predicate pht:safe_light run tp @s ~ -512 ~

scoreboard players add @s pht.dummy 1
playsound minecraft:entity.firework_rocket.blast hostile @a ~ ~ ~ 0.5 2
particle flash
particle smoke ~ ~ ~ 0.5 0.5 0.5 0 15
particle portal ~ ~ ~ 0 0 0 0 15
execute if score @s pht.dummy matches 5 run function pht:entity/marker/activate
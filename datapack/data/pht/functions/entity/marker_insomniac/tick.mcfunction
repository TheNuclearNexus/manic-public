scoreboard players add @s pht.dummy 1
playsound minecraft:entity.firework_rocket.twinkle neutral @a ~ ~ ~ 0.5 2
particle flash
particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0 15
particle portal ~ ~ ~ 0 0 0 0 15
execute if score @s pht.dummy matches 5 run function pht:entity/marker_insomniac/activate
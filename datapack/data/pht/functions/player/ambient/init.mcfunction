scoreboard players add @s pht.dummy2 1
execute if score @s pht.dummy2 matches 1 run playsound pht:pht.ambience.echo ambient @s ~ ~ ~ 100 0
execute if score @s pht.dummy2 matches 10.. run scoreboard players reset @s pht.dummy2

playsound pht:pht.ambience.pling ambient @s
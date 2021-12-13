scoreboard players add #pht.blindness pht.dummy3 1
execute if score #pht.blindness pht.dummy3 matches 2.. run scoreboard players reset #pht.blindness pht.dummy3

execute if score #pht.blindness pht.dummy3 matches 1 run tellraw @s {"translate":"pht.blindness_off","color":"#7524dd"}
execute unless score #pht.blindness pht.dummy3 matches 1 run tellraw @s {"translate":"pht.blindness_on","color":"#7524dd"}
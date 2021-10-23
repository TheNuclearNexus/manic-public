scoreboard players add #pht.display pht.dummy3 1
execute if score #pht.display pht.dummy3 matches 2 run scoreboard players reset #pht.display pht.dummy3

execute if score #pht.display pht.dummy3 matches 1 run tellraw @s {"translate":"pht.global_trigger_off","color":"#7524dd"}
execute unless score #pht.display pht.dummy3 matches 1 run tellraw @s {"translate":"pht.global_trigger_on","color":"#7524dd"}
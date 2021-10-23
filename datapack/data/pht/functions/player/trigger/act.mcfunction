scoreboard players reset @s pht.display

scoreboard players add @s pht.dummy3 1
execute if score @s pht.dummy3 matches 2 run scoreboard players reset @s pht.dummy3

execute if score @s pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_off","color":"#a763ff"}
execute unless score @s pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_on","color":"#a763ff"}

execute if score #pht.display pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_warning","color":"#dd2424"}
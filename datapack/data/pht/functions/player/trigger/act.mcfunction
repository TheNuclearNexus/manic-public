title @s title ""
title @s subtitle ""
title @s actionbar ""

scoreboard players reset @s pht.display

scoreboard players add @s pht.dummy3 1
execute if score @s pht.dummy3 matches 3.. run scoreboard players reset @s pht.dummy3

execute if score @s pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_on_wheel","color":"#a763ff"}
execute if score @s pht.dummy3 matches 2 run tellraw @s {"translate":"pht.trigger_on_large_wheel","color":"#a763ff"}
execute unless score @s pht.dummy3 matches 1.. run tellraw @s {"translate":"pht.trigger_on","color":"#a763ff"}

execute if score #pht.display pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_warning","color":"#dd2424"}

scoreboard players enable @s pht.display
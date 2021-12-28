title @s title ""
title @s subtitle ""
title @s actionbar ""

scoreboard players reset @s manic.display

scoreboard players add @s manic.dummy3 1
execute if score @s manic.dummy3 matches 4.. run scoreboard players reset @s manic.dummy3

execute if score @s manic.dummy3 matches 1 run tellraw @s {"translate":"manic.trigger_on_wheel","color":"#82339b"}
execute if score @s manic.dummy3 matches 2 run tellraw @s {"translate":"manic.trigger_on_large_wheel","color":"#82339b"}
execute if score @s manic.dummy3 matches 3 run tellraw @s {"translate":"manic.trigger_off","color":"#82339b"}
execute unless score @s manic.dummy3 matches 1.. run tellraw @s {"translate":"manic.trigger_on","color":"#82339b"}

execute if score #manic.display manic.dummy3 matches 1 run tellraw @s {"translate":"manic.trigger_warning","color":"#dd2424"}

scoreboard players enable @s manic.display
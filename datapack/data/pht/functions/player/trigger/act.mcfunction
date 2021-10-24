scoreboard players reset @s pht.display

scoreboard players add @s pht.dummy3 1
execute if score @s pht.dummy3 matches 4 run scoreboard players reset @s pht.dummy3

execute if score @s pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_off","color":"#a763ff"}
execute if score @s pht.dummy3 matches 2 run tellraw @s {"translate":"pht.trigger_audio","color":"#a763ff"}
execute if score @s pht.dummy3 matches 3 run tellraw @s {"translate":"pht.trigger_audio2","color":"#a763ff"}
execute unless score @s pht.dummy3 matches 1.. run tellraw @s {"translate":"pht.trigger_on","color":"#a763ff"}
stopsound @s ambient pht:pht.ambience.echo

execute if score #pht.display pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_warning","color":"#dd2424"}

scoreboard players enable @s pht.display
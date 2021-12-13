scoreboard players reset @s pht.audio

scoreboard players add @s pht.dummy6 1
execute if score @s pht.dummy6 matches 2.. run scoreboard players reset @s pht.dummy6

execute if score @s pht.dummy6 matches 1 run tellraw @s {"translate":"pht.trigger_audio_off","color":"#a763ff"}
execute unless score @s pht.dummy6 matches 1.. run tellraw @s {"translate":"pht.trigger_audio_on","color":"#a763ff"}

execute if score #pht.display pht.dummy3 matches 1 run tellraw @s {"translate":"pht.trigger_warning","color":"#dd2424"}

scoreboard players enable @s pht.audio

stopsound @s * pht:ambience.insane
stopsound @s * pht:ambience.waning
scoreboard players reset @s manic.audio

scoreboard players add @s manic.dummy6 1
execute if score @s manic.dummy6 matches 2.. run scoreboard players reset @s manic.dummy6

execute if score @s manic.dummy6 matches 1 run tellraw @s {"translate":"manic.trigger_audio_off","color":"#82339b"}
execute unless score @s manic.dummy6 matches 1.. run tellraw @s {"translate":"manic.trigger_audio_on","color":"#82339b"}

execute if score #manic.display manic.dummy3 matches 1 run tellraw @s {"translate":"manic.trigger_warning","color":"#dd2424"}

scoreboard players enable @s manic.audio

stopsound @s * manic:ambience.insane
stopsound @s * manic:ambience.waning
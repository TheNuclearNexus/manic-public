## Initiate
execute unless score @s manic.sanity matches -32767.. run scoreboard players set @s manic.sanity 9999

## Death Reset
execute if score @s manic.death matches 1.. run function manic:player/reset_death

## Sanity Calculation
execute unless entity @s[tag=manic.sanity_lock] unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] unless score @s manic.safe_time matches 1.. run function manic:player/sanity_calc_down
execute unless entity @s[tag=manic.sanity_lock] unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] run function manic:player/sanity_calc_up
execute if score @s manic.safe_time matches 1.. run scoreboard players remove @s manic.safe_time 1
execute if score @s manic.ichor_time matches 1.. run scoreboard players remove @s manic.ichor_time 1

execute if score @s manic.sanity matches 10000.. run scoreboard players set @s manic.sanity 9999
execute if score @s manic.sanity matches ..-1 run scoreboard players set @s manic.sanity 0

## Sleep Calculation
execute if score @s manic.last_sleep matches ..20 if predicate manic:time/morning run function manic:player/sleep

## Trigger
scoreboard players enable @s manic.display
scoreboard players enable @s manic.audio
execute if score @s manic.display matches 1.. run function manic:player/trigger/act
execute if score @s manic.audio matches 1.. run function manic:player/trigger/act_audio

## Display & Audio
execute unless score #manic.display manic.dummy3 matches 1 run function manic:player/sanity_display
execute if score @s manic.sanity matches ..2222 if predicate manic:chance/pling unless score @s manic.dummy6 matches 1.. if entity @e[tag=manic.schizoid,distance=..16] run playsound manic:manic.ambience.pling ambient @s

## Advancement
execute if score @s manic.sanity matches ..2222 run advancement grant @s only manic:mania/insanity
execute if score @s manic.sanity matches ..1 run advancement grant @s only manic:mania/zero_sanity
execute if score @s manic.sanity matches ..2222 run advancement grant @s only manic:mania/root

## Flute
execute if score @s manic.flute_time matches 1.. run scoreboard players remove @s manic.flute_time 1

## Particles
execute if score @s manic.safe_time matches 1.. if predicate manic:chance/coinflip run particle sneeze ~ ~0.75 ~ 0.35 0.75 0.35 0 1
execute if score @s manic.safe_time matches 1.. if predicate manic:chance/coinflip run particle sneeze ~ ~0.75 ~ 0.35 0.75 0.35 0 1

execute if score @s manic.ichor_time matches 1.. if predicate manic:chance/coinflip run particle end_rod ~ ~0.75 ~ 0.35 0.75 0.35 0 1
execute if score @s manic.ichor_time matches 1.. if predicate manic:chance/coinflip run particle end_rod ~ ~0.75 ~ 0.35 0.75 0.35 0 1
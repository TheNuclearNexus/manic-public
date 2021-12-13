## Initiate
execute unless score @s pht.sanity matches -32767.. run scoreboard players set @s pht.sanity 9999

## Death Reset
execute if score @s pht.death matches 1.. run function pht:player/reset_death

## Sanity Calculation
execute unless entity @s[tag=pht.sanity_lock] unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] unless score @s pht.safe_time matches 1.. run function pht:player/sanity_calc_down
execute unless entity @s[tag=pht.sanity_lock] unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] run function pht:player/sanity_calc_up
execute if score @s pht.safe_time matches 1.. run scoreboard players remove @s pht.safe_time 1

execute if score @s pht.sanity matches 10000.. run scoreboard players set @s pht.sanity 9999
execute if score @s pht.sanity matches ..-1 run scoreboard players set @s pht.sanity 0

## Sleep Calculation
execute if score @s pht.last_sleep matches ..20 if predicate pht:morning run function pht:player/sleep

## Trigger
scoreboard players enable @s pht.display
scoreboard players enable @s pht.audio
execute if score @s pht.display matches 1.. run function pht:player/trigger/act
execute if score @s pht.audio matches 1.. run function pht:player/trigger/act_audio

## Display & Audio
execute unless score #pht.display pht.dummy3 matches 1 run function pht:player/sanity_display
execute if score @s pht.sanity matches ..1111 if predicate pht:chance/pling unless score @s pht.dummy6 matches 1.. run playsound pht:pht.ambience.pling ambient @s

## Advancement
execute if score @s pht.sanity matches ..2222 run advancement grant @s only pht:ingame/insanity
execute if score @s pht.sanity matches ..1 run advancement grant @s only pht:ingame/zero_sanity
execute if score @s pht.sanity matches ..2222 run advancement grant @s only pht:ingame/root

## Flute
execute if score @s pht.flute_time matches 1.. run scoreboard players remove @s pht.flute_time 1

## Particles
execute if score @s pht.safe_time matches 1.. if predicate pht:chance/coinflip run particle sneeze ~ ~0.75 ~ 0.35 0.75 0.35 0 1
execute if score @s pht.safe_time matches 1.. if predicate pht:chance/coinflip run particle sneeze ~ ~0.75 ~ 0.35 0.75 0.35 0 1
execute if score @s pht.safe_time matches 1.. if predicate pht:chance/coinflip run particle sneeze ~ ~0.75 ~ 0.35 0.75 0.35 0 1

## Death Reset
execute if score @s pht.death matches 1.. run function pht:player/reset_death

## Sanity Calculation
execute unless entity @s[tag=pht.sanity_lock] unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] run function pht:player/sanity_calculation

execute if score @s pht.sanity matches 10001.. run scoreboard players set @s pht.sanity 10000
execute if score @s pht.sanity matches ..-1 run scoreboard players set @s pht.sanity 0

# Sleep Calculation
execute if score @s pht.last_sleep matches ..20 if predicate pht:morning run function pht:player/sleep

## Trigger
scoreboard players enable @s pht.display
execute if score @s pht.display matches 1.. run function pht:player/trigger/act

## Display
execute unless score @s pht.dummy3 matches 1 unless score #pht.display pht.dummy3 matches 1 run function pht:player/sanity_display
execute if score @s pht.sanity matches ..2222 if predicate pht:unsafe_light run tag @s add pht.dummy_ambient
execute if score @s pht.sanity matches ..2222 if predicate pht:night if predicate pht:in_overworld run tag @s add pht.dummy_ambient
execute if score @s pht.sanity matches ..2222 if predicate pht:low_height run tag @s add pht.dummy_ambient
execute if score @s pht.sanity matches ..2222 if predicate pht:in_the_end run tag @s add pht.dummy_ambient
execute if entity @s[tag=pht.dummy_ambient] run function pht:player/ambient/init
tag @s remove pht.dummy_ambient
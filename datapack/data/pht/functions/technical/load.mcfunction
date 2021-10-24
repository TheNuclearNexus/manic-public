msg HingeDH Manic reloaded successfully

## Setup
gamerule doInsomnia false
scoreboard objectives add pht.dummy dummy
scoreboard objectives add pht.dummy2 dummy
scoreboard objectives add pht.dummy3 dummy
scoreboard objectives add pht.decay dummy
scoreboard objectives add pht.sanity dummy
scoreboard objectives add pht.death deathCount
scoreboard objectives add pht.last_sleep minecraft.custom:minecraft.time_since_rest
scoreboard objectives add pht.display trigger

scoreboard players set #pht.installed pht.dummy 1

## Difficulty
execute store result score #pht.difficulty pht.dummy run difficulty
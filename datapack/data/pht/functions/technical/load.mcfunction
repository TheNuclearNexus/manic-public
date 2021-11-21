msg HingeDH Manic reloaded successfully

## Setup
gamerule doInsomnia false
gamerule commandBlockOutput false
scoreboard objectives add pht.dummy dummy
scoreboard objectives add pht.dummy2 dummy
scoreboard objectives add pht.dummy3 dummy
scoreboard objectives add pht.dummy4 dummy
scoreboard objectives add pht.dummy5 dummy
scoreboard objectives add pht.dummy6 dummy
# :hollow:
# I uh, kinda lost track what each one does.
# I'll fix this eventually I suppose :trashed:
# update: my garbage organisation getting bad
# im dying under the weight of my sins
# the sins of forgor :skull:
# may god have mercy on my soul
scoreboard objectives add pht.rotation dummy
scoreboard objectives add pht.max_sap dummy
scoreboard objectives add pht.sap_timer dummy
scoreboard objectives add pht.decay dummy
scoreboard objectives add pht.sanity dummy
scoreboard objectives add pht.death deathCount
scoreboard objectives add pht.last_sleep minecraft.custom:minecraft.time_since_rest
scoreboard objectives add pht.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add pht.n_atk dummy
scoreboard objectives add pht.n_timer dummy
scoreboard objectives add pht.safe_time dummy
scoreboard objectives add pht.flute_time dummy
scoreboard objectives add pht.bee_delay dummy
scoreboard objectives add pht.bee_frame dummy
scoreboard objectives add pht.keeper dummy
scoreboard objectives add pht.keeper2 dummy
#Antivil
team add pht.antivil
team modify pht.antivil friendlyFire false
execute if score tcc.server_version tcc.dummy matches 50.. run scoreboard players set #pht.tcc pht.dummy 1

scoreboard players set #pht.installed pht.dummy 1

## Difficulty
execute store result score #pht.difficulty pht.dummy run difficulty

## Settings
scoreboard objectives add pht.display trigger
scoreboard objectives add pht.audio trigger
scoreboard objectives add pht.chdisplay dummy
scoreboard objectives add pht.chaudio dummy
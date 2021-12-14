msg HingeDH Manic reloaded successfully

## Setup
gamerule doInsomnia false
gamerule commandBlockOutput false
forceload add 0 0
scoreboard objectives add pht.dummy dummy
scoreboard objectives add pht.dummy2 dummy
scoreboard objectives add pht.dummy3 dummy
scoreboard objectives add pht.dummy4 dummy
scoreboard objectives add pht.dummy5 dummy
scoreboard objectives add pht.dummy6 dummy
scoreboard objectives add pht.default dummy
# :hollow:
# I uh, kinda lost track what each one does.
# I'll fix this eventually I suppose :trashed:
# update: my garbage organisation getting bad
# im dying under the weight of my sins
# the sins of forgor :skull:
# may god have mercy on my soul
# I hate you Nia - Psy
# avian.dummy
# screw you too psy -Nia
scoreboard objectives add pht.rotation dummy
scoreboard objectives add pht.max_sap dummy
scoreboard objectives add pht.sap_timer dummy
scoreboard objectives add pht.decay dummy
scoreboard objectives add pht.temp_sanity dummy
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
scoreboard objectives add pht.pitcher dummy
scoreboard objectives add pht.creep_fuse dummy
scoreboard objectives add pht.revenant dummy
scoreboard objectives add pht.daylight dummy
scoreboard objectives add pht.health dummy
scoreboard objectives add pht.axetime dummy
scoreboard objectives add pht.axekills dummy
scoreboard objectives add pht.entitycount dummy

# Anirrum
scoreboard objectives add pht.sword minecraft.used:minecraft.diamond_sword
scoreboard objectives add pht.pickaxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add pht.axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add pht.shovel minecraft.used:minecraft.diamond_shovel
scoreboard objectives add pht.hoe minecraft.used:minecraft.diamond_hoe
scoreboard objectives add pht.n.sword minecraft.used:minecraft.netherite_sword
scoreboard objectives add pht.n.pickaxe minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add pht.n.axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add pht.n.shovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add pht.n.hoe minecraft.used:minecraft.netherite_hoe
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

## Damage
scoreboard objectives add pht.damage dummy
scoreboard players set #4 pht.damage 4
scoreboard players set #5 pht.damage 5
scoreboard players set #8 pht.damage 8
scoreboard players set #10 pht.damage 10
scoreboard players set #20 pht.damage 20
scoreboard players set #25 pht.damage 25
scoreboard players set #80 pht.damage 80
scoreboard players set #100 pht.damage 100
scoreboard players set #200 pht.damage 200
scoreboard players set #250 pht.damage 250
scoreboard players set #2000 pht.damage 2000
scoreboard players set #2500 pht.damage 2500
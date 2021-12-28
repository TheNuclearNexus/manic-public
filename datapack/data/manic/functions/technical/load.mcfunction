# Installation
scoreboard players set #manic.installed manic.dummy 1
scoreboard players set #manic.version manic.dummy 2
execute if score #pht.installed pht.dummy matches 1.. run function manic:technical/updater/uninstall_pht

# Reload messages
msg Nia0_ Manic reloaded successfully
msg Psy1 mabic!!!!!!!!!!!!1!!!
msg ElBones Manic reloaded successfully
msg Ruth3rford Manic reloaded successfully
msg PrimalUgly Manic reloaded successfully

## Setup
gamerule doInsomnia false
gamerule commandBlockOutput false
forceload add 0 0
scoreboard objectives add manic.dummy dummy
scoreboard objectives add manic.dummy2 dummy
scoreboard objectives add manic.dummy3 dummy
scoreboard objectives add manic.dummy4 dummy
scoreboard objectives add manic.dummy5 dummy
scoreboard objectives add manic.dummy6 dummy
scoreboard objectives add manic.default dummy
scoreboard objectives add manic.default2 dummy
scoreboard objectives add manic.default3 dummy
scoreboard objectives add manic.default4 dummy
scoreboard objectives add manic.default5 dummy
# Someone please fix this im going to die
# Note that dummy objectives are not true dummy objectives, but default are
# Pain.

scoreboard objectives add manic.rotation dummy
scoreboard objectives add manic.decay dummy
scoreboard objectives add manic.temp_sanity dummy
scoreboard objectives add manic.sanity dummy
scoreboard objectives add manic.death deathCount
scoreboard objectives add manic.last_sleep minecraft.custom:minecraft.time_since_rest
scoreboard objectives add manic.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add manic.n_atk dummy
scoreboard objectives add manic.n_timer dummy
scoreboard objectives add manic.safe_time dummy
scoreboard objectives add manic.flute_time dummy
scoreboard objectives add manic.bee_delay dummy
scoreboard objectives add manic.bee_frame dummy
scoreboard objectives add manic.keeper dummy
scoreboard objectives add manic.keeper2 dummy
scoreboard objectives add manic.pitcher dummy
scoreboard objectives add manic.creep_fuse dummy
scoreboard objectives add manic.revenant dummy
scoreboard objectives add manic.daylight dummy
scoreboard objectives add manic.health dummy
scoreboard objectives add manic.axetime dummy
scoreboard objectives add manic.axekills dummy
scoreboard objectives add manic.entitycount dummy
scoreboard objectives add manic.nm_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add manic.leather dummy
scoreboard objectives add manic.ichor_time dummy
scoreboard objectives add manic.mansioncheck dummy
scoreboard objectives add manic.damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add manic.satisfied dummy
scoreboard objectives add manic.crave dummy
scoreboard objectives add manic.age dummy
scoreboard objectives add manic.souls dummy
scoreboard objectives add manic.sap dummy

# Item Used
scoreboard objectives add manic.bow minecraft.used:minecraft.bow
scoreboard objectives add manic.crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add manic.sword minecraft.used:minecraft.diamond_sword
scoreboard objectives add manic.pickaxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add manic.axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add manic.shovel minecraft.used:minecraft.diamond_shovel
scoreboard objectives add manic.hoe minecraft.used:minecraft.diamond_hoe
scoreboard objectives add manic.n.sword minecraft.used:minecraft.netherite_sword
scoreboard objectives add manic.n.pickaxe minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add manic.n.axe minecraft.used:minecraft.netherite_axe
scoreboard objectives add manic.n.shovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add manic.n.hoe minecraft.used:minecraft.netherite_hoe
#Antivil
team add manic.antivil
team modify manic.antivil friendlyFire false
execute if score tcc.server_version tcc.dummy matches 50.. run scoreboard players set #manic.tcc manic.dummy 1

## Difficulty
execute store result score #manic.difficulty manic.dummy run difficulty

## Settings
scoreboard objectives add manic.display trigger
scoreboard objectives add manic.audio trigger
scoreboard objectives add manic.chdisplay dummy
scoreboard objectives add manic.chaudio dummy

## Damage
scoreboard objectives add manic.damage dummy
scoreboard players set #4 manic.damage 4
scoreboard players set #5 manic.damage 5
scoreboard players set #8 manic.damage 8
scoreboard players set #10 manic.damage 10
scoreboard players set #20 manic.damage 20
scoreboard players set #25 manic.damage 25
scoreboard players set #80 manic.damage 80
scoreboard players set #100 manic.damage 100
scoreboard players set #200 manic.damage 200
scoreboard players set #250 manic.damage 250
scoreboard players set #2000 manic.damage 2000
scoreboard players set #2500 manic.damage 2500

scoreboard players set #manic.constant_5 manic.dummy 5

#lcg
scoreboard players set #8 manic.default 8
scoreboard players set #lcg_a manic.default 1630111353
scoreboard players set #lcg_c manic.default 1623164762
scoreboard players set #lcg_m manic.default 2147483647
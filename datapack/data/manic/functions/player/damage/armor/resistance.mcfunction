# rx97
#  adapted from TCC

##################################
# Formula
#  1 #reduction = #amplifier * 20%
##################################

scoreboard players set #reduction manic.damage 0

# First, lets grab the values
execute if data storage manic.damage:temp self.ActiveEffects[{Id:11b}] store result score #reduction manic.damage run data get storage manic.damage:temp self.ActiveEffects[{Id:11b}].Amplifier
execute if data storage manic.damage:temp self.ActiveEffects[{Id:11b}] run scoreboard players add #reduction manic.damage 1

# 1
scoreboard players operation #reduction manic.damage *= #20 manic.damage

# tellraw @s ["#resist %: ", {"score": {"name": "#reduction", "objective": "manic.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #resistance manic.damage = @s manic.damage
scoreboard players operation #resistance manic.damage *= #reduction manic.damage
scoreboard players operation #resistance manic.damage /= #100 manic.damage

# tellraw @s ["#resistance: ", {"score": {"name": "#resistance", "objective": "manic.damage"}, "color": "blue"}]

scoreboard players operation @s manic.damage -= #resistance manic.damage

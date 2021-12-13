# rx97
#  adapted from TCC

##################################
# Formula
#  1 #reduction = #amplifier * 20%
##################################

scoreboard players set #reduction pht.damage 0

# First, lets grab the values
execute if data storage pht.damage:temp self.ActiveEffects[{Id:11b}] store result score #reduction pht.damage run data get storage pht.damage:temp self.ActiveEffects[{Id:11b}].Amplifier
execute if data storage pht.damage:temp self.ActiveEffects[{Id:11b}] run scoreboard players add #reduction pht.damage 1

# 1
scoreboard players operation #reduction pht.damage *= #20 pht.damage

# tellraw @s ["#resist %: ", {"score": {"name": "#reduction", "objective": "pht.damage"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #resistance pht.damage = @s pht.damage
scoreboard players operation #resistance pht.damage *= #reduction pht.damage
scoreboard players operation #resistance pht.damage /= #100 pht.damage

# tellraw @s ["#resistance: ", {"score": {"name": "#resistance", "objective": "pht.damage"}, "color": "blue"}]

scoreboard players operation @s pht.damage -= #resistance pht.damage

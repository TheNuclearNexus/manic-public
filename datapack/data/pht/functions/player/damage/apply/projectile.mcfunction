# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor pht.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness pht.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage pht.damage = @s pht.damage

data modify storage pht.damage:temp self set from entity @s

# first armor and toughness
function pht:player/damage/armor/toughness

# then protection
function pht:player/damage/armor/protection
function pht:player/damage/armor/proj_protection

# finally resistance
function pht.damage:armor/resistance

# go back to same scale
scoreboard players operation @s pht.damage /= #10 pht.damage

# apply new damage
execute if score @s pht.damage matches 1.. run function pht:player/damage/apply

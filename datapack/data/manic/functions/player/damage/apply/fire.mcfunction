# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor manic.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness manic.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage manic.damage = @s manic.damage

data modify storage manic.damage:temp self set from entity @s

# first armor and toughness
function manic:player/damage/armor/toughness

# then protection
function manic:player/damage/armor/protection
function manic:player/damage/armor/proj_fire

# finally resistance
function manic.damage:armor/resistance

# go back to same scale
scoreboard players operation @s manic.damage /= #10 manic.damage

# apply new damage
execute if score @s manic.damage matches 1.. run function manic:player/damage/apply

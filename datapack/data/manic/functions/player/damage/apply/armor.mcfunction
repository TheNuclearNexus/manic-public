# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor manic.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness manic.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage manic.damage = @s manic.damage

# tellraw @s ["armor: ", {"score": {"name": "#10armor", "objective": "manic.damage"}, "color": "green"}]
# tellraw @s ["armor toughness: ", {"score": {"name": "#10toughness", "objective": "manic.damage"}, "color": "red"}]
# tellraw @s ["damage: ", {"score": {"name": "#damage", "objective": "manic.damage"}, "color": "green"}]

data modify storage manic.damage:temp self set from entity @s

# first armor and toughness
function manic:player/damage/armor/toughness

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "manic.damage"}, "color": "red"}]

# then protection
function manic:player/damage/armor/protection

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "manic.damage"}, "color": "green"}]

# finally resistance
function manic:player/damage/armor/resistance

# tellraw @s ["damage: ", {"score": {"name": "@s", "objective": "manic.damage"}, "color": "red"}]

# tellraw @s ""

# go back to same scale
scoreboard players operation @s manic.damage /= #10 manic.damage

# apply new damage
execute if score @s manic.damage matches 1.. run function manic:player/damage/apply

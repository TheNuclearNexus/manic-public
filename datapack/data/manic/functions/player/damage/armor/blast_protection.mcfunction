# rx97
#  adapted from TCC

##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 8 × level ) )%
##################################

execute store result score #helm manic.damage run data get storage manic.damage:temp self.Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute store result score #chest manic.damage run data get storage manic.damage:temp self.Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute store result score #legs manic.damage run data get storage manic.damage:temp self.Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute store result score #boots manic.damage run data get storage manic.damage:temp self.Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction manic.damage = #helm manic.damage
scoreboard players operation #reduction manic.damage += #chest manic.damage
scoreboard players operation #reduction manic.damage += #legs manic.damage
scoreboard players operation #reduction manic.damage += #boots manic.damage

# 1
scoreboard players operation #reduction manic.damage *= #8 manic.damage

# 2
scoreboard players operation #reduction manic.damage < #80 manic.damage


# Let's calculate the damage to remove
scoreboard players operation #protection manic.damage = @s manic.damage
scoreboard players operation #protection manic.damage *= #reduction manic.damage
scoreboard players operation #protection manic.damage /= #100 manic.damage

scoreboard players operation @s manic.damage -= #protection manic.damage

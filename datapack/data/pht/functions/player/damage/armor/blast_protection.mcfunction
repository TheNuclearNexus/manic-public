# rx97
#  adapted from TCC

##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 8 × level ) )%
##################################

execute store result score #helm pht.damage run data get storage pht.damage:temp self.Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute store result score #chest pht.damage run data get storage pht.damage:temp self.Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute store result score #legs pht.damage run data get storage pht.damage:temp self.Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
execute store result score #boots pht.damage run data get storage pht.damage:temp self.Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction pht.damage = #helm pht.damage
scoreboard players operation #reduction pht.damage += #chest pht.damage
scoreboard players operation #reduction pht.damage += #legs pht.damage
scoreboard players operation #reduction pht.damage += #boots pht.damage

# 1
scoreboard players operation #reduction pht.damage *= #8 pht.damage

# 2
scoreboard players operation #reduction pht.damage < #80 pht.damage


# Let's calculate the damage to remove
scoreboard players operation #protection pht.damage = @s pht.damage
scoreboard players operation #protection pht.damage *= #reduction pht.damage
scoreboard players operation #protection pht.damage /= #100 pht.damage

scoreboard players operation @s pht.damage -= #protection pht.damage

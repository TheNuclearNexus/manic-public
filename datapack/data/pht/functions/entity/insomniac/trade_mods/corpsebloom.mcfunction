# Psychic was here :trashed:

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:barrier",Count:1b},maxUses:1,uses:0}
loot replace entity @s weapon.offhand loot pht:item/corpsebloom
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]
item replace entity @s weapon.offhand with air
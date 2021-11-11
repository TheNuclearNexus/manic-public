data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:barrier",Count:1b},maxUses:4,uses:0}
loot replace entity @s weapon.offhand loot pht:item/pumpkin_pop
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]
data modify entity @s Offers.Recipes[-1].sell.Count set value 3
item replace entity @s weapon.offhand with air
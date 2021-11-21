data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:barrier",Count:1b},maxUses:1,uses:0}
loot replace entity @s weapon.offhand loot pht:item/music_disc_respite
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]
loot replace entity @s weapon.offhand loot pht:item/moonstone
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[1]
data modify entity @s Offers.Recipes[-1].buy.Count set value 24
item replace entity @s weapon.offhand with air
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle",Count:1b}}] unless entity @s[gamemode=creative] run function pht:item/corpse_sap/bottle_stack
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle",Count:1b}}] unless entity @s[gamemode=creative] run loot replace entity @s weapon.mainhand loot pht:item/corpse_sap

execute if entity @s[gamemode=creative] run loot give @s loot pht:item/corpse_sap
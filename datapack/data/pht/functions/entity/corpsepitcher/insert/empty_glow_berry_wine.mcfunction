function pht:entity/corpsepitcher/states/open
execute if predicate pht:chance/third run function pht:entity/corpsepitcher/states/close
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
execute as @p[tag=pht.interact] if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run loot give @s loot pht:item/glow_berry_wine
execute as @p[tag=pht.interact] unless entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run loot replace entity @s weapon.mainhand loot pht:item/glow_berry_wine
playsound minecraft:item.bottle.fill player @a[distance=0..16] ~ ~ ~ 1 1.25
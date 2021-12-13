function pht:entity/corpsepitcher/states/honey
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
execute as @p[tag=pht.interact] if entity @s[nbt={SelectedItem:{id:"minecraft:honey_bottle"}}] run give @s minecraft:glass_bottle
execute as @p[tag=pht.interact] unless entity @s[nbt={SelectedItem:{id:"minecraft:honey_bottle"}}] run item replace entity @s weapon.mainhand with minecraft:glass_bottle
playsound minecraft:item.honey_bottle.drink player @a[distance=0..16] ~ ~ ~ 1.5 0.8
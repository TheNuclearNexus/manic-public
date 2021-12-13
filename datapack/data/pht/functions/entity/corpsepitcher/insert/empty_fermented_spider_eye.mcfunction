function pht:entity/corpsepitcher/states/open
loot spawn ~ ~0.75 ~ loot pht:block/corpsepitcher/fermented_spider_eye
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
execute as @p[tag=pht.interact] if entity @s[nbt={SelectedItem:{id:"minecraft:bottle"}}] run give @s minecraft:honey_bottle
execute as @p[tag=pht.interact] unless entity @s[nbt={SelectedItem:{id:"minecraft:bottle"}}] run item replace entity @s weapon.mainhand with minecraft:honey_bottle
playsound minecraft:item.honey_bottle.drink player @a[distance=0..16] ~ ~ ~ 1.5 0.8
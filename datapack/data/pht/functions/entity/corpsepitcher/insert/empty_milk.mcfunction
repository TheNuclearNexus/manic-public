function pht:entity/corpsepitcher/states/open
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
execute as @p[tag=pht.interact] if entity @s[nbt={SelectedItem:{id:"minecraft:bucket"}}] run give @s minecraft:milk_bucket
execute as @p[tag=pht.interact] unless entity @s[nbt={SelectedItem:{id:"minecraft:bucket"}}] run item replace entity @s weapon.mainhand with minecraft:milk_bucket
playsound minecraft:item.bucket.fill player @a[distance=0..16] ~ ~ ~ 1 1.75
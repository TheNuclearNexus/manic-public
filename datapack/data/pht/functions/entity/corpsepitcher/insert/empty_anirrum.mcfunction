function pht:entity/corpsepitcher/states/open
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
execute as @p[tag=pht.interact] if entity @s[nbt={SelectedItem:{id:"minecraft:bucket"}}] run loot give @s loot pht:item/anirrum_bucket
execute as @p[tag=pht.interact] unless entity @s[nbt={SelectedItem:{id:"minecraft:bucket"}}] run loot replace entity @s weapon.mainhand loot pht:item/anirrum_bucket
playsound minecraft:item.bucket.fill_lava player @a[distance=0..16] ~ ~ ~ 1 1
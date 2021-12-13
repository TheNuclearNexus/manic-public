function pht:entity/corpsepitcher/states/milk
playsound minecraft:item.bucket.empty player @a[distance=0..16] ~ ~ ~ 1 1.75
item replace entity @p[tag=pht.interact] weapon.mainhand with minecraft:bucket
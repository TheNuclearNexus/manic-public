function pht:entity/corpsepitcher/states/lava
particle minecraft:lava ~ ~1 ~ 0 0 0 0.1 3
playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 1
item replace entity @p[tag=pht.interact] weapon.mainhand with minecraft:bucket
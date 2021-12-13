function pht:entity/corpsepitcher/states/anirrum
particle minecraft:soul_fire_flame ~ ~1.10 ~ 0.25 0 0.25 0.03 4
playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 0.4
item replace entity @p[tag=pht.interact] weapon.mainhand with minecraft:bucket
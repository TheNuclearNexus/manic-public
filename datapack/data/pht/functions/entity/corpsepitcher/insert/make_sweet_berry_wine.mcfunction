function pht:entity/corpsepitcher/states/sweet_berry_wine
playsound minecraft:item.bucket.fill player @a[distance=0..16] ~ ~ ~ 0.75 1.75
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
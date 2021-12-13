function pht:entity/corpsepitcher/states/anirrum
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.05 10
execute positioned ~ ~1.25 ~ run particle minecraft:soul ^ ^ ^0.35 0 0 0 0 1 force
playsound minecraft:item.bucket.fill_lava player @a[distance=0..16] ~ ~ ~ 1 0.25
playsound minecraft:entity.wither.ambient player @a[distance=0..16] ~ ~ ~ 0.1 2
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
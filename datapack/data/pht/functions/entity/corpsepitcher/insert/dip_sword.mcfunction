function pht:entity/corpsepitcher/states/open
execute if predicate pht:chance/coinflip run function pht:entity/corpsepitcher/states/close
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.05 10
playsound minecraft:block.lava.pop player @a[distance=0..16] ~ ~ ~ 1 0
playsound minecraft:block.fire.extinguish player @a[distance=0..16] ~ ~ ~ 0.15 0.75
item modify entity @p[tag=pht.interact] weapon.mainhand pht:anirrum/sword
advancement grant @p[tag=pht.interact] only pht:ingame/anirrum
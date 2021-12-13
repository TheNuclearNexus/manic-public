function pht:entity/corpsepitcher/states/potent_cheese
playsound minecraft:block.fungus.break player @a[distance=0..16] ~ ~ ~ 1 0
execute positioned ~ ~0.75 ~ run particle minecraft:poof ^ ^ ^0.5 0 0 0 0.05 10
item modify entity @p[tag=pht.interact] weapon.mainhand pht:remove_1
advancement grant @p[tag=pht.interact] only pht:ingame/cheese
function pht:entity/corpsepitcher/states/open
execute if predicate pht:chance/third run function pht:entity/corpsepitcher/states/close
loot spawn ~ ~0.75 ~ loot pht:item/mundane_cheese
execute positioned ~ ~0.75 ~ run particle minecraft:poof ^ ^ ^0.5 0 0 0 0.05 3
playsound minecraft:block.beehive.exit player @a[distance=0..16] ~ ~ ~ 1 1.5
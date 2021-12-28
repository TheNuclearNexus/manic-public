scoreboard players set @s manic.pitcher 0
function manic:entity/corpsepitcher/states
playsound minecraft:item.bottle.fill player @a[distance=0..16] ~ ~ ~ 1 1.25
execute positioned ~ ~0.75 ~ run particle minecraft:poof ^ ^ ^0.5 0 0 0 0.05 10
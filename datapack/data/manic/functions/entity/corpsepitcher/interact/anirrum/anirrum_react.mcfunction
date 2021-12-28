tag @s remove manic.target
scoreboard players set @s manic.pitcher 1
execute if predicate manic:chance/coinflip run scoreboard players set @s manic.pitcher 0
function manic:entity/corpsepitcher/states
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.05 10
playsound minecraft:block.lava.pop player @a[distance=0..16] ~ ~ ~ 1 0
playsound minecraft:block.fire.extinguish player @a[distance=0..16] ~ ~ ~ 0.15 0.75
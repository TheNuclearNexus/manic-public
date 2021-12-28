scoreboard players set @s manic.pitcher 1
execute if predicate manic:chance/tfifth run scoreboard players set @s manic.pitcher 0
function manic:entity/corpsepitcher/states
playsound minecraft:block.fungus.break player @a[distance=0..16] ~ ~ ~ 1 0
execute positioned ~ ~0.75 ~ run particle minecraft:poof ^ ^ ^0.5 0 0 0 0.05 10
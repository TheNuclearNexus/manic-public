playsound manic:entity.schizoid.screech hostile @a[distance=0..16] ~ ~ ~ 1 0.75
particle minecraft:end_rod ~ ~1 ~ 0.25 0.25 0.25 0.1 10

execute as @s[tag=manic.keeper] if predicate manic:chance/keeper_stun as @e[tag=manic.keeper.root,sort=nearest,limit=1] at @s run function manic:animations/keeper/stun/start

kill @s[tag=!manic.keeper]
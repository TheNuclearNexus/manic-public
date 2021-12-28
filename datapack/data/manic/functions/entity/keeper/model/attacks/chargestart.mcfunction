playsound manic:entity.keeper.prepare_charge hostile @a ~ ~ ~ 1.4
execute as @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p
effect give @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] minecraft:slowness 5 4 true
tag @s remove manic.animation.walk
function manic:animations/keeper/charge/start
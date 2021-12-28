function manic:entity/corpsepitcher/interact/raycast

scoreboard players operation @s manic.default = @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] manic.pitcher
execute as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] at @s run function manic:entity/corpsepitcher/interact/empty/react

execute if predicate manic:one run loot replace entity @s weapon.mainhand loot manic:empty
execute unless predicate manic:one run loot give @s loot manic:empty
item modify entity @s weapon.mainhand manic:remove_1_unstack_check

advancement revoke @s only manic:technical/raycast/corpsepitcher/filter/bucket
advancement revoke @s only manic:technical/raycast/corpsepitcher/filter/bottle
advancement revoke @s only manic:technical/raycast/corpsepitcher/filter/air 
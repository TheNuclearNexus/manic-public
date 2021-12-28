function manic:entity/corpsepitcher/interact/raycast
execute as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] at @s run function manic:entity/corpsepitcher/interact/anirrum/anirrum_react
execute if predicate manic:one run loot replace entity @s weapon.mainhand loot manic:anirrum
execute unless predicate manic:one run loot give @s loot manic:anirrum
item modify entity @s weapon.mainhand manic:remove_1_unstack_check
advancement grant @s only manic:mania/anirrum
advancement revoke @s only manic:technical/raycast/corpsepitcher/anirrum
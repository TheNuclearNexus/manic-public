function manic:entity/corpsebloom/interact/raycast
execute as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] at @s run function manic:entity/corpsebloom/interact/craved
item modify entity @s weapon.mainhand manic:remove_1
advancement revoke @s through manic:technical/raycast/corpsebloom/cravings/c_parent

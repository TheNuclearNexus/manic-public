function manic:entity/corpsebloom/interact/raycast
playsound entity.generic.eat block @a[distance=0..16] ~ ~ ~ 0.25 0.4
execute if predicate manic:chance/random_feed as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] at @s run function manic:entity/corpsebloom/age/advance
item modify entity @s weapon.mainhand manic:remove_1
advancement revoke @s through manic:technical/raycast/corpsebloom/cravings/r_parent
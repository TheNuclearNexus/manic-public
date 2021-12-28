function manic:entity/corpsebloom/interact/raycast
execute as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1,scores={manic.age=0..5}] at @s run function manic:entity/corpsebloom/age/adult
execute as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1,scores={manic.sap=0,manic.age=6..}] run scoreboard players set @s manic.sap 1
execute as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1,scores={manic.sap=0,manic.age=6..}] at @s run function manic:entity/corpsebloom/grown/sappy

tag @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] remove manic.target
advancement revoke @s only manic:technical/raycast/corpsebloom/debugstick

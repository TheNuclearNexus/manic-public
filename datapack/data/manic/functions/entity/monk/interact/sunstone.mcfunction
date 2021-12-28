advancement revoke @s only manic:technical/monk/sunstone

tag @s add manic.trigger
execute as @e[type=wandering_trader,tag=manic.monk,distance=..6] at @a[distance=..5,tag=manic.trigger,limit=1,sort=nearest] anchored eyes facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @a[distance=..5,tag=manic.trigger,limit=1,sort=nearest] positioned ^ ^ ^-1 if entity @a[distance=..1,tag=manic.trigger] run tag @s add manic.target

execute as @e[tag=manic.target,sort=nearest,limit=1] if score @s manic.default3 matches 1.. run function manic:entity/monk/receive/deny
execute as @e[tag=manic.target,sort=nearest,limit=1] unless score @s manic.default3 matches 1.. run function manic:entity/monk/receive/sunstone

tag @s remove manic.trigger
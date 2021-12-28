tag @s remove manic.target
item modify entity @s weapon.offhand manic:id
execute store result score @s manic.pitcher run data get entity @s HandItems[1].tag.c_id
function manic:entity/corpsepitcher/states
#execute if predicate manic:corpsepitcher/lava run scoreboard players set @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] manic.pitcher 2
#execute if predicate manic:corpsepitcher/lava run playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 1
#execute if predicate manic:corpsepitcher/anirrum run scoreboard players set @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] manic.pitcher 3
#execute if predicate manic:corpsepitcher/anirrum run playsound minecraft:item.bucket.empty_lava player @a[distance=0..16] ~ ~ ~ 1 0.4
#execute if predicate manic:corpsepitcher/honey run scoreboard players set @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] manic.pitcher 4
#execute if predicate manic:corpsepitcher/honey run playsound minecraft:item.honey_bottle.drink player @a[distance=0..16] ~ ~ ~ 1.5 0.8
#execute if predicate manic:corpsepitcher/milk run scoreboard players set @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] manic.pitcher 5
#execute if predicate manic:corpsepitcher/milk run playsound minecraft:item.bucket.empty player @a[distance=0..16] ~ ~ ~ 1 1.25
#execute if predicate manic:corpsepitcher/ferment run scoreboard players set @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] manic.pitcher 6
#execute if predicate manic:corpsepitcher/ferment run playsound minecraft:block.brewing_stand.brew player @a[distance=0..16] ~ ~ ~ 0.5 1.5
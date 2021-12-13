# vvv This REALLY sucks but I have to do it for it to accurately follow the player. vvv
execute if entity @e[type=minecraft:player,distance=..16,gamemode=!creative,gamemode=!spectator] run function pht:entity/corpsecreep/track

## Ignited
execute as @s[tag=pht.corpsecreep.ignited] run scoreboard players add @s pht.creep_fuse 1
execute if score @s[tag=pht.corpsecreep.ignited] pht.creep_fuse matches 30.. run function pht:entity/corpsecreep/fuse/detonate

## Hurt Detection
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if score @s pht.dummy matches 9 run playsound minecraft:entity.creeper.hurt hostile @a[distance=0..16] ~ ~ ~ 0.25 0.75
execute if score @s pht.dummy matches 9 run playsound minecraft:block.grass.break hostile @a[distance=0..16] ~ ~ ~ 0.5 0

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360070}
execute if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360072}
item replace entity @s[tag=pht.corpsecreep.ignited] weapon.mainhand with minecraft:slime_ball{CustomModelData:8360074}

## Frames Hurt
execute if entity @s[tag=pht.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360071}
execute if entity @s[tag=pht.hurt] if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360073}
execute if entity @s[tag=pht.hurt] run item replace entity @s[tag=pht.corpsecreep.ignited] weapon.mainhand with minecraft:slime_ball{CustomModelData:8360075}
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if score @s pht.dummy matches 9 run playsound pht:entity.eidolon.hurt hostile @a[distance=0..16] ~ ~ ~ 1
execute if score @s pht.dummy matches 9 if predicate pht:chance/third run function pht:entity/eidolon/teleport

execute if entity @e[type=#minecraft:arrows,distance=0..4,nbt=!{inGround:1b}] run function pht:entity/eidolon/teleport

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360077}
execute if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360079}

## Frames Hurt
execute if entity @s[tag=pht.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360078}
execute if entity @s[tag=pht.hurt] if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360080}

## All eyes on you
execute if entity @e[type=player,distance=0..18,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s pht.default 1
execute unless entity @e[type=player,distance=0..18,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s pht.default
execute if score @s pht.default matches 20.. run tp @s ~ ~ ~ facing entity @p eyes
execute if score @s pht.default matches 10 run playsound pht:entity.eidolon.locate hostile @a[distance=0..16] ~ ~ ~ 1.75
execute if score @s pht.default matches 40 run function pht:entity/eidolon/beam/cast
execute if score @s pht.default matches 45 run function pht:entity/eidolon/beam/cast
execute if score @s pht.default matches 50 run function pht:entity/eidolon/beam/cast
execute if score @s pht.default matches 50.. run scoreboard players set @s pht.default -40
execute if score @s pht.default matches 1.. run effect give @s minecraft:slowness 1 99 true
tag @s remove manic.hurt
execute store result score @s manic.dummy run data get entity @s HurtTime
execute if score @s manic.dummy matches 1.. run tag @s add manic.hurt
execute if score @s manic.dummy matches 9 run playsound manic:entity.eidolon.hurt hostile @a[distance=0..16] ~ ~ ~ 1
execute if score @s[tag=!manic.snared] manic.dummy matches 9 if predicate manic:chance/third run function manic:entity/eidolon/teleport

execute if entity @e[type=#minecraft:arrows,distance=0..4,nbt=!{inGround:1b}] run function manic:entity/eidolon/teleport

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360077}
execute if predicate manic:moving run item replace entity @s[tag=!manic.snared] weapon.mainhand with minecraft:slime_ball{CustomModelData:8360079}

## Frames Hurt
execute if entity @s[tag=manic.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360078}
execute if entity @s[tag=manic.hurt] if predicate manic:moving run item replace entity @s[tag=!manic.snared] weapon.mainhand with minecraft:slime_ball{CustomModelData:8360080}

## All eyes on you
execute if entity @e[type=player,distance=0..18,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s manic.default 1
execute unless entity @e[type=player,distance=0..18,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s manic.default
execute if score @s manic.default matches 20.. run tp @s ~ ~ ~ facing entity @p eyes
execute if score @s manic.default matches 10 run playsound manic:entity.eidolon.locate hostile @a[distance=0..16] ~ ~ ~ 1.75
execute if score @s[tag=!manic.snared] manic.default matches 40 run function manic:entity/eidolon/beam/cast
execute if score @s[tag=!manic.snared] manic.default matches 45 run function manic:entity/eidolon/beam/cast
execute if score @s[tag=!manic.snared] manic.default matches 50 run function manic:entity/eidolon/beam/cast
execute if score @s manic.default matches 50.. run scoreboard players set @s manic.default -40
execute if score @s manic.default matches 1.. run effect give @s minecraft:slowness 1 99 true
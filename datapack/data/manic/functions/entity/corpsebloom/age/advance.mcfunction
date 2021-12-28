tag @s remove manic.target
#if craving is satisfied start timer
execute if score @s manic.default matches -1 run scoreboard players set @s manic.crave 0
execute if score @s manic.default matches -1 run playsound entity.player.burp block @a[distance=0..16] ~ ~ ~ 0.25 0.4
execute if score @s manic.default matches -1 run scoreboard players set @s manic.default 60

#increase age and check for maturing
scoreboard players add @s manic.age 1
execute if score @s manic.age matches 3 run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360010}
execute if score @s manic.age matches 6 run function manic:entity/corpsebloom/age/adult
particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0.1 10 force

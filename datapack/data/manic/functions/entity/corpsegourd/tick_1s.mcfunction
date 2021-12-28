scoreboard players add @s manic.dummy 1

execute if score @s manic.dummy matches ..2 run playsound minecraft:block.gravel.break block @a ~ ~ ~ 1 1.25
execute if score @s manic.dummy matches 1 run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360022}
execute if score @s manic.dummy matches 2 run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360023}
execute if score @s manic.dummy matches 3 run function manic:entity/corpsegourd/grow_up
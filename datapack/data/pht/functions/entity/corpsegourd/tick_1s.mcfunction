scoreboard players add @s pht.dummy 1

execute if score @s pht.dummy matches ..2 run playsound minecraft:block.gravel.break block @a ~ ~ ~ 1 1.25
execute if score @s pht.dummy matches 1 run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360022}
execute if score @s pht.dummy matches 2 run item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360023}
execute if score @s pht.dummy matches 3 run function pht:entity/corpsegourd/grow_up
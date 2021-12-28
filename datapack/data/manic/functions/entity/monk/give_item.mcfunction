execute if score @s manic.default2 matches 1 run loot spawn ~ ~1 ~ loot manic:monklin_bartering

scoreboard players reset @s manic.default3
scoreboard players reset @s manic.default4

execute if score @s manic.default2 matches 2 if predicate manic:chance/monklin/membrane run scoreboard players set @s manic.default4 1
execute if score @s manic.default2 matches 3 if predicate manic:chance/monklin/vacuole run scoreboard players set @s manic.default4 1
execute if score @s manic.default2 matches 4 if predicate manic:chance/monklin/necroplasm run scoreboard players set @s manic.default4 1
execute if score @s manic.default2 matches 5 if predicate manic:chance/monklin/reticulum run scoreboard players set @s manic.default4 1

execute unless score @s manic.default4 matches 1 unless score @s manic.default2 matches 1 run playsound manic:entity.monk.cringe neutral @a
execute if score @s manic.default4 matches 1 run playsound manic:entity.monk.celebrate neutral @a
execute if score @s manic.default2 matches 1 unless score @s manic.default4 matches 1 run playsound manic:entity.monk.celebrate neutral @a
execute if score @s manic.default4 matches 1 run loot spawn ~ ~1 ~ loot manic:item/sunstone

scoreboard players reset @s manic.default2
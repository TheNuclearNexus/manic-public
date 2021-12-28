tag @s remove manic.target
execute if score @s manic.pitcher matches 2..5 run scoreboard players set @s manic.pitcher 1
execute if score @s manic.pitcher matches 1 run function manic:entity/corpsepitcher/states
execute if score @s manic.pitcher matches 7..9 run function manic:entity/corpsepitcher/interact/empty/wine_react
execute if score @s manic.pitcher matches 10..14 run function manic:entity/corpsepitcher/interact/empty/cheese_react

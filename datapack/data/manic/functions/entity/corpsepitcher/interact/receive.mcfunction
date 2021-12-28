execute unless score @s manic.pitcher = @s manic.pitcher run scoreboard players set @s manic.pitcher 0
execute if score @s manic.pitcher matches 0 run scoreboard players set @s manic.pitcher 1
function manic:entity/corpsepitcher/states
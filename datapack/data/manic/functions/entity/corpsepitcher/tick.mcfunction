execute unless block ~ ~-1 ~ #manic:corpsebloom_valid_blocks run function manic:entity/corpsepitcher/destroy
execute unless block ~ ~ ~ #manic:air unless block ~ ~ ~ light run function manic:entity/corpsepitcher/destroy
execute unless block ~ ~1 ~ #manic:air run function manic:entity/corpsepitcher/destroy

execute if entity @s[nbt={HurtTime:9s}] run function manic:entity/corpsepitcher/hurt
execute if score @s manic.dummy matches 2.. run function manic:entity/corpsepitcher/destroy
execute if score @s manic.dummy2 matches 1.. run scoreboard players remove @s manic.dummy2 1
execute unless score @s manic.dummy2 matches 1.. run scoreboard players reset @s manic.dummy

execute unless score @s manic.pitcher = @s manic.pitcher run scoreboard players set @s manic.pitcher 0
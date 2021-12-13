execute unless block ~ ~-1 ~ #pht:corpsebloom_valid_blocks run function pht:entity/corpsepitcher/destroy
execute unless block ~ ~ ~ #pht:air unless block ~ ~ ~ light run function pht:entity/corpsepitcher/destroy
execute unless block ~ ~1 ~ #pht:air run function pht:entity/corpsepitcher/destroy

execute if entity @s[nbt={HurtTime:9s}] run function pht:entity/corpsepitcher/hurt
execute if score @s pht.dummy matches 2.. run function pht:entity/corpsepitcher/destroy
execute if score @s pht.dummy2 matches 1.. run scoreboard players remove @s pht.dummy2 1
execute unless score @s pht.dummy2 matches 1.. run scoreboard players reset @s pht.dummy
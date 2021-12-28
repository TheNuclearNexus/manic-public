execute if entity @s[tag=manic.corpsegourd.sappy] if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] unless entity @s[tag=manic.powered] run function manic:entity/corpsegourd/trail/create
execute if block ~ ~ ~ redstone_wire[power=0] run tag @s remove manic.powered
execute unless block ~ ~ ~ redstone_wire run tag @s remove manic.powered
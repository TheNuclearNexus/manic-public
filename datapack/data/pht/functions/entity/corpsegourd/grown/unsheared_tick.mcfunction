execute if entity @s[tag=pht.corpsegourd.sappy] if block ~ ~ ~ redstone_wire unless block ~ ~ ~ redstone_wire[power=0] unless entity @s[tag=pht.powered] run function pht:entity/corpsegourd/trail/create
execute if block ~ ~ ~ redstone_wire[power=0] run tag @s remove pht.powered
execute unless block ~ ~ ~ redstone_wire run tag @s remove pht.powered
execute unless entity @s[tag=pht.trail_up] unless entity @s[tag=pht.trail_down] run tp @s ^ ^ ^0.5
execute if entity @s[tag=pht.trail_up] run tp @s ~ ~0.5 ~
execute if entity @s[tag=pht.trail_down] run tp @s ~ ~-0.5 ~
scoreboard players add @s pht.dummy 1
execute if score @s pht.dummy matches 28.. run function pht:entity/corpsegourd/trail/delete

execute if score @s pht.dummy matches 5.. if entity @e[tag=pht.corpsegourd.grown,distance=..0.5,tag=!pht.corpsegourd.sappy] run function pht:entity/corpsegourd/trail/complete
execute if score @s pht.dummy matches 5.. if entity @e[tag=pht.corpsepitcher,distance=..0.5,tag=!pht.pitcher.open] run function pht:entity/corpsegourd/trail/pitcher
execute if score @s pht.dummy matches 5.. if entity @e[tag=pht.corpsethorn,distance=..0.5,tag=!pht.corpsethorn.satisfied] run function pht:entity/corpsegourd/trail/cactus
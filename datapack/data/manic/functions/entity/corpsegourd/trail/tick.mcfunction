execute unless entity @s[tag=manic.trail_up] unless entity @s[tag=manic.trail_down] run tp @s ^ ^ ^0.5
execute if entity @s[tag=manic.trail_up] run tp @s ~ ~0.5 ~
execute if entity @s[tag=manic.trail_down] run tp @s ~ ~-0.5 ~
scoreboard players add @s manic.dummy 1
execute if score @s manic.dummy matches 28.. run function manic:entity/corpsegourd/trail/delete

execute if score @s manic.dummy matches 5.. if entity @e[tag=manic.corpsegourd.grown,distance=..0.5,tag=!manic.corpsegourd.sappy] run function manic:entity/corpsegourd/trail/complete
execute if score @s manic.dummy matches 5.. if entity @e[tag=manic.corpsepitcher,distance=..0.5,scores={manic.pitcher=0}] run function manic:entity/corpsegourd/trail/pitcher
execute if score @s manic.dummy matches 5.. if entity @e[tag=manic.corpsethorn,distance=..0.5,tag=!manic.corpsethorn.satisfied] run function manic:entity/corpsegourd/trail/cactus
execute if score @s manic.dummy matches 5.. if entity @e[tag=manic.altar,distance=..0.5,scores={manic.default=..2}] run function manic:entity/altar/states/fill
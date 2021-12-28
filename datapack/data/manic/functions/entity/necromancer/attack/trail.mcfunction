tp @s ^ ^ ^0.5
scoreboard players add @s manic.dummy 1
execute unless block ^ ^ ^1 #manic:raycast_ignore run function manic:entity/necromancer/attack/trail_finish
execute if score @s manic.dummy matches 24.. run function manic:entity/necromancer/attack/trail_finish
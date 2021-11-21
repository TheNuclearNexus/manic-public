tp @s ^ ^ ^0.5
scoreboard players add @s pht.dummy 1
execute unless block ^ ^ ^1 #pht:raycast_ignore run function pht:entity/necromancer/attack/trail_finish
execute if score @s pht.dummy matches 24.. run function pht:entity/necromancer/attack/trail_finish
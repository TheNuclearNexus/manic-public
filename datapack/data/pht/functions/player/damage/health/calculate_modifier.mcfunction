execute store result score #maximum_health pht.damage run attribute @s generic.max_health get
execute store result score #current_health pht.damage run data get entity @s Health
scoreboard players operation @s pht.damage += #maximum_health pht.damage
scoreboard players operation @s pht.damage -= #current_health pht.damage
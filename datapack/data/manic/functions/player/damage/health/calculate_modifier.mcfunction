execute store result score #maximum_health manic.damage run attribute @s generic.max_health get
execute store result score #current_health manic.damage run data get entity @s Health
scoreboard players operation @s manic.damage += #maximum_health manic.damage
scoreboard players operation @s manic.damage -= #current_health manic.damage
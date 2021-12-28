execute store result score $manic.temp.health manic.dummy run data get entity @s Health
scoreboard players operation $manic.temp.health manic.dummy -= @s manic.damage
execute if score $manic.temp.health manic.dummy matches ..0 run function manic:entity/damage/death
execute store result entity @s Health int 1 run scoreboard players get $manic.temp.health manic.dummy
scoreboard players reset $manic.temp.health manic.dummy

data modify entity @s ActiveEffects append value {Amplifier:99b,ShowParticles:0b,Duration:2,Id:11b}
effect give @s[type=!#manic:undead] minecraft:instant_damage 1 0 true
effect give @s[type=#manic:undead] minecraft:instant_health 1 0 true
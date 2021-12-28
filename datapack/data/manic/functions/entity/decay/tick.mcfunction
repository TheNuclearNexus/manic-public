scoreboard players add @s manic.decay 1
execute if score @s manic.decay matches 12.. unless entity @a[distance=..48] run function manic:entity/decay/despawn
execute if score @s manic.decay matches 16.. unless entity @a[distance=..24] run function manic:entity/decay/despawn
execute if score @s manic.decay matches 24.. unless entity @a[distance=..12] run function manic:entity/decay/despawn
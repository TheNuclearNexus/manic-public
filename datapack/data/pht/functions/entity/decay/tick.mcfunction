scoreboard players add @s pht.decay 1
execute if score @s pht.decay matches 12.. unless entity @a[distance=..48] run function pht:entity/decay/despawn
execute if score @s pht.decay matches 16.. unless entity @a[distance=..24] run function pht:entity/decay/despawn
execute if score @s pht.decay matches 24.. unless entity @a[distance=..12] run function pht:entity/decay/despawn
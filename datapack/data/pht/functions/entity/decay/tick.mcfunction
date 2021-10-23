execute unless score @s pht.decay matches 12.. run scoreboard players add @s pht.decay 1
execute if score @s pht.decay matches 12 unless entity @a[distance=..24] run function pht:entity/decay/despawn
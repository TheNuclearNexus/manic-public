## Hurt Detection
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 0.1

## Frames A
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360051}
execute if entity @s[tag=pht.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360052}

## Frames B
execute if score @s pht.keeper2 matches 3.. run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360053}
execute if score @s[tag=pht.hurt] pht.keeper2 matches 3.. run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360054}

## Frames C
execute if score @s pht.keeper2 matches 4 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360055}
execute if score @s[tag=pht.hurt] pht.keeper2 matches 4 run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360056}
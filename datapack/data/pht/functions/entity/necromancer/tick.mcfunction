## Hurt Detection
tag @s remove pht.hurt
execute store result score @s pht.dummy run data get entity @s HurtTime
execute if score @s pht.dummy matches 1.. run tag @s add pht.hurt
execute if score @s pht.dummy matches 9 run playsound minecraft:entity.evoker.hurt hostile @a

## Frames Default
item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360029}
execute if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360033}

## Frames Hurt
item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360027}
execute if entity @s[tag=pht.hurt] run item replace entity @s armor.head with minecraft:slime_ball{CustomModelData:8360028}
execute if entity @s[tag=pht.hurt] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360030}
execute if entity @s[tag=pht.hurt] if predicate pht:moving run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360034}

## Frames Casting
execute if entity @s[tag=pht.casting] run effect give @s slowness 1 255 true
execute if entity @s[tag=pht.casting] run item replace entity @s weapon.mainhand with minecraft:slime_ball{CustomModelData:8360031}
execute if entity @s[tag=pht.casting] run item replace entity @s[tag=pht.hurt] weapon.mainhand with minecraft:slime_ball{CustomModelData:8360032}
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360019}
particle block dirt ~ ~ ~ 0.5 0.15 0.5 0 10
playsound minecraft:block.gravel.break block @a ~ ~ ~ 1 0.75

scoreboard players reset @s pht.dummy
tag @s remove pht.corpsegourd
tag @s add pht.corpsegourd.grown
tag @s add pht.corpsegourd.root

advancement grant @a[distance=..10] only pht:ingame/gourd
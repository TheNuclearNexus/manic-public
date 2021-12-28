summon minecraft:snowball ~ ~1.25 ~ {Item:{id:"minecraft:stone_button",Count:1b},NoGravity:1b,Tags:["smithed.entity","manic.podium_item"]}
execute positioned ~ ~1.25 ~ as @e[tag=manic.podium_item,sort=nearest,limit=1] run data modify entity @s Item set from entity @p[tag=manic.interact] SelectedItem
execute positioned ~ ~1.25 ~ as @e[tag=manic.podium_item,sort=nearest,limit=1] run data merge entity @s {Item:{Count:1b}}
playsound manic:entity.podium.clink block @a[distance=0..16] ~ ~ ~

execute as @p[tag=manic.interact] run item modify entity @s weapon.mainhand manic:remove_1
setblock ~ ~ ~ minecraft:light[level=10]

tag @s remove manic.podium.empty
tag @s add manic.podium.full
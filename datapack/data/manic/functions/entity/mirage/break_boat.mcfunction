playsound manic:entity.boat.break neutral @a
execute if data entity @s {Type:"oak"} run particle minecraft:block oak_planks ~ ~ ~ 0.5 0.25 0.5 0.1 100
execute if data entity @s {Type:"birch"} run particle minecraft:block birch_planks ~ ~ ~ 0.5 0.25 0.5 0.1 100
execute if data entity @s {Type:"spruce"} run particle minecraft:block spruce_planks ~ ~ ~ 0.5 0.25 0.5 0.1 100
execute if data entity @s {Type:"jungle"} run particle minecraft:block jungle_planks ~ ~ ~ 0.5 0.25 0.5 0.1 100
execute if data entity @s {Type:"acacia"} run particle minecraft:block acacia_planks ~ ~ ~ 0.5 0.25 0.5 0.1 100
execute if data entity @s {Type:"dark_oak"} run particle minecraft:block dark_oak_planks ~ ~ ~ 0.5 0.25 0.5 0.1 100
kill @s
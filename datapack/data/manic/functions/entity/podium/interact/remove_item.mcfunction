summon minecraft:item ~ ~1.25 ~ {Item:{id:"minecraft:stone_button",Count:1b}}
execute positioned ~ ~1.25 ~ as @e[type=item,sort=nearest,limit=1] run data modify entity @s Item set from entity @e[tag=manic.podium_item,sort=nearest,limit=1] Item
execute positioned ~ ~1.25 ~ run kill @e[tag=manic.podium_item,sort=nearest,limit=1]
execute as @p[tag=manic.interact] unless predicate manic:full_inventory as @e[type=item,sort=nearest,limit=1] run tp @s @p[tag=manic.interact]
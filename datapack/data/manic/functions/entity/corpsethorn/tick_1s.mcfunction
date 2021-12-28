data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison
effect clear @s hunger

execute if entity @s[tag=manic.corpsethorn.satisfied] unless entity @s[tag=manic.corpsethorn.bloomed] run function manic:entity/corpsethorn/states/blank
execute if entity @s[tag=manic.corpsethorn.bloomed] if entity @s[tag=manic.corpsethorn.satisfied] run function manic:entity/corpsethorn/states/blooming
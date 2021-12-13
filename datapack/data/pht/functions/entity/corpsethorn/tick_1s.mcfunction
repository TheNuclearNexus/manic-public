data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison
effect clear @s hunger

execute if entity @s[tag=pht.corpsethorn.satisfied] unless entity @s[tag=pht.corpsethorn.bloomed] run function pht:entity/corpsethorn/states/blank
execute if entity @s[tag=pht.corpsethorn.bloomed] if entity @s[tag=pht.corpsethorn.satisfied] run function pht:entity/corpsethorn/states/blooming
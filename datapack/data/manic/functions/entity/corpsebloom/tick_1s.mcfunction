data remove entity @s Offers.Recipes
effect give @s invisibility 999999 0 true
effect clear @s poison
effect clear @s hunger

execute if score @s manic.age matches 6.. run function manic:entity/corpsebloom/grown/tick_1s

execute unless score @s manic.age = @s manic.age run scoreboard players set @s manic.age 0
execute unless score @s manic.crave = @s manic.crave run function manic:entity/corpsebloom/interact/randomise_cravings
execute unless score @s manic.default = @s manic.default run scoreboard players set @s manic.default 1



execute if score @s manic.age matches ..5 if predicate manic:chance/corpsebloom_ambient run function manic:entity/corpsebloom/ambience
execute if score @s manic.age matches ..5 unless score @s manic.default matches ..0 run scoreboard players remove @s manic.default 1
execute if score @s manic.age matches ..5 if score @s manic.default matches 0 run function manic:entity/corpsebloom/interact/randomise_cravings
execute if score @s manic.age matches ..5 if score @s manic.default matches 0 run scoreboard players set @s manic.default -2




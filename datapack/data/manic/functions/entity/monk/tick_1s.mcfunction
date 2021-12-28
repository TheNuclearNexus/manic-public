execute if predicate manic:chance/ambient run playsound manic:entity.monk.idle neutral @a
execute if score @s manic.default3 matches 1.. run scoreboard players remove @s manic.default3 1
execute if score @s manic.default3 matches 1 run function manic:entity/monk/give_item

execute unless predicate manic:location/the_nether run scoreboard players add @s manic.default 1
execute unless predicate manic:location/the_nether run effect give @s slowness 1 2 true
execute if score @s manic.default matches 10.. run function manic:entity/monk/zombify
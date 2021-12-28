recipe take @s manic:pumpkin_pop
advancement revoke @s only manic:technical/craft/pumpkin_pop
execute unless predicate manic:full_inventory run loot give @s loot manic:item/pumpkin_pop
execute if predicate manic:full_inventory run loot spawn ~ ~ ~ loot manic:item/pumpkin_pop
clear @s knowledge_book
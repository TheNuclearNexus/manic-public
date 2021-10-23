recipe take @s pht:pumpkin_pop
advancement revoke @s only pht:craft/pumpkin_pop
execute unless predicate pht:full_inventory run loot give @s loot pht:item/pumpkin_pop
execute if predicate pht:full_inventory run loot spawn ~ ~ ~ loot pht:item/pumpkin_pop
clear @s knowledge_book
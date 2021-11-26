recipe take @s pht:raw_wart
advancement revoke @s only pht:craft/raw_wart
execute unless predicate pht:full_inventory run loot give @s loot pht:item/raw_wart
execute if predicate pht:full_inventory run loot spawn ~ ~ ~ loot pht:item/raw_wart
clear @s knowledge_book
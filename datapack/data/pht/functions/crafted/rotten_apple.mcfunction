recipe take @s pht:rotten_apple
advancement revoke @s only pht:craft/rotten_apple
execute unless predicate pht:full_inventory run loot give @s loot pht:item/rotten_apple
execute if predicate pht:full_inventory run loot spawn ~ ~ ~ loot pht:item/rotten_apple
clear @s knowledge_book
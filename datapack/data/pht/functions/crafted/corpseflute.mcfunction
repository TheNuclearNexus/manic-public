recipe take @s pht:corpseflute
advancement revoke @s only pht:craft/corpseflute
execute unless predicate pht:full_inventory run loot give @s loot pht:item/corpseflute
execute if predicate pht:full_inventory run loot spawn ~ ~ ~ loot pht:item/corpseflute
clear @s knowledge_book
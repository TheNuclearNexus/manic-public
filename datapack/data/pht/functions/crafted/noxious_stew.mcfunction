recipe take @s pht:noxious_stew
advancement revoke @s only pht:craft/noxious_stew
execute unless predicate pht:full_inventory run loot give @s loot pht:item/noxious_stew
execute if predicate pht:full_inventory run loot spawn ~ ~ ~ loot pht:item/noxious_stew
clear @s knowledge_book
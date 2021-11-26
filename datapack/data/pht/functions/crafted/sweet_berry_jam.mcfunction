recipe take @s pht:sweet_berry_jam
advancement revoke @s only pht:craft/sweet_berry_jam
execute unless predicate pht:full_inventory run loot give @s loot pht:item/sweet_berry_jam
execute if predicate pht:full_inventory run loot spawn ~ ~ ~ loot pht:item/sweet_berry_jam
clear @s knowledge_book
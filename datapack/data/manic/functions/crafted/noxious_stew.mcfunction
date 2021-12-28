recipe take @s manic:noxious_stew
advancement revoke @s only manic:technical/craft/noxious_stew
execute unless predicate manic:full_inventory run loot give @s loot manic:item/noxious_stew
execute if predicate manic:full_inventory run loot spawn ~ ~ ~ loot manic:item/noxious_stew
clear @s knowledge_book
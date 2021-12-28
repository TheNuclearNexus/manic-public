recipe take @s manic:glow_berry_jam
advancement revoke @s only manic:technical/craft/glow_berry_jam
execute unless predicate manic:full_inventory run loot give @s loot manic:item/glow_berry_jam
execute if predicate manic:full_inventory run loot spawn ~ ~ ~ loot manic:item/glow_berry_jam
clear @s knowledge_book
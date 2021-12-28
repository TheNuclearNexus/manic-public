execute if predicate manic:one run loot replace entity @s weapon.mainhand loot manic:fill
execute unless predicate manic:one run loot give @s loot manic:fill
item modify entity @s weapon.mainhand manic:remove_1_unstack_check
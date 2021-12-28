## Spread
execute if predicate manic:range/over_128 run spreadplayers ~ ~ 1 48 false @s
execute if predicate manic:range/96_to_128 run spreadplayers ~ ~ 1 48 under 127 false @s
execute if predicate manic:range/64_to_96 run spreadplayers ~ ~ 1 48 under 96 false @s
execute if predicate manic:range/32_to_64 run spreadplayers ~ ~ 1 48 under 64 false @s
execute if predicate manic:range/0_to_32 run spreadplayers ~ ~ 1 48 under 32 false @s
execute if predicate manic:range/-64_to_0 run spreadplayers ~ ~ 1 48 under 0 false @s

## Spawn
execute at @s run function manic:entity/insomniac/spawn

## Kill
kill @s
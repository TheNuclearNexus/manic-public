playsound minecraft:entity.enderman.teleport hostile @a[distance=0..16] ~ ~ ~
particle minecraft:portal ~ ~1 ~ 0 0 0 0.25 50
execute if predicate pht:range/-64_to_0 run spreadplayers ~ ~ 1 16 under 0 false @s
execute if predicate pht:range/0_to_32 run spreadplayers ~ ~ 1 16 under 32 false @s
execute if predicate pht:range/32_to_64 run spreadplayers ~ ~ 1 16 under 64 false @s
execute if predicate pht:range/over_64 run spreadplayers ~ ~ 1 16 false @s
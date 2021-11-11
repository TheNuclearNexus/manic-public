summon marker ~ ~ ~ {Tags:["pht.marker","pht.entity"]}
summon marker ~ ~ ~ {Tags:["pht.marker","pht.entity"]}
execute if predicate pht:chance/necromorph_spawn run summon marker ~ ~ ~ {Tags:["pht.marker","pht.entity"]}
execute if predicate pht:chance/necromorph_spawn run summon marker ~ ~ ~ {Tags:["pht.marker","pht.entity"]}

execute if predicate pht:range/-64_to_0 run spreadplayers ~ ~ 1 16 under 0 false @e[tag=pht.marker]
execute if predicate pht:range/0_to_32 run spreadplayers ~ ~ 1 16 under 32 false @e[tag=pht.marker]
execute if predicate pht:range/32_to_64 run spreadplayers ~ ~ 1 16 under 64 false @e[tag=pht.marker]
execute if predicate pht:range/over_64 run spreadplayers ~ ~ 1 16 false @e[tag=pht.marker]

execute as @e[tag=pht.marker] at @s run function pht:entity/marker/init
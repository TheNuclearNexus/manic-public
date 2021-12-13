summon marker ~ ~ ~ {Tags:["pht.marker_eido","pht.entity"]}
execute if predicate pht:chance/fourth run summon marker ~ ~ ~ {Tags:["pht.marker_eido","pht.entity"]}

execute if predicate pht:range/0_to_32 run spreadplayers ~ ~ 1 16 under 32 false @e[tag=pht.marker_eido]
execute if predicate pht:range/32_to_64 run spreadplayers ~ ~ 1 16 under 64 false @e[tag=pht.marker_eido]
execute if predicate pht:range/64_to_96 run spreadplayers ~ ~ 1 16 under 96 false @e[tag=pht.marker_eido]
execute if predicate pht:range/96_to_128 run spreadplayers ~ ~ 1 16 under 128 false @e[tag=pht.marker_eido]
execute if predicate pht:range/96_to_128 run spreadplayers ~ ~ 1 16 under 128 false @e[tag=pht.marker_eido]
execute if predicate pht:range/over_128 run spreadplayers ~ ~ 1 16 false @e[tag=pht.marker_eido]

execute as @e[tag=pht.marker_eido] at @s run function pht:entity/marker_eidolon/init
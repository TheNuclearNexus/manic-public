tag @s add pht.found

# Guaranteed
function pht:entity/insomniac/trade_mods/corpsebloom
function pht:entity/insomniac/trade_mods/pumpkin_pop

execute if predicate pht:chance/insomniac/chances_rare run function pht:entity/insomniac/trade_mods/music_disc_respite

# Get Emeralds
execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes append value {maxUses:4,buy:{id:"minecraft:rotten_flesh",Count:10b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes append value {maxUses:8,buy:{id:"minecraft:phantom_membrane",Count:6b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run function pht:entity/insomniac/trade_mods/sell_ectoplasm

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes append value {maxUses:4,buy:{id:"minecraft:spider_eye",Count:8b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes append value {maxUses:4,buy:{id:"minecraft:bone",Count:7b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes append value {maxUses:5,buy:{id:"minecraft:gunpowder",Count:5b},sell:{id:"minecraft:emerald",Count:1b}}

# Goods
execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:12b},sell:{id:"minecraft:mycelium",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:10b},sell:{id:"minecraft:honeycomb",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:compass",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:clock",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:name_tag",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:20b},sell:{id:"minecraft:lodestone",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes append value {maxUses:3,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:saddle",Count:1b}}
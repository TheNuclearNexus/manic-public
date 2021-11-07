tag @s add pht.found

# Rarities
data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"translate":"pht.item.corpsebloom_seeds","italic":false}',Lore:['{"translate":"pht.pack.name","color":"#a763ff","italic":false}']},Unbreakable:1b,HideFlags:4,CustomModelData:8360000,pht:{id:"corpsebloom"}}}}

execute if predicate pht:chance/insomniac/chances_rare run data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:music_disc_11",Count:1b,tag:{display:{Lore:['{"translate":"pht.item.record.respite","color":"gray","italic":false}','{"translate":"pht.pack.name","color":"#A763FF","italic":false}']},HideFlags:32,CustomModelData:8360000,pht:{id:"music_disc_respite"}}}}

# Get Emeralds
execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes prepend value {maxUses:4,buy:{id:"minecraft:rotten_flesh",Count:10b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes prepend value {maxUses:8,buy:{id:"minecraft:phantom_membrane",Count:6b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes prepend value {maxUses:4,buy:{id:"minecraft:spider_eye",Count:8b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes prepend value {maxUses:4,buy:{id:"minecraft:bone",Count:7b},sell:{id:"minecraft:emerald",Count:1b}}

execute if predicate pht:chance/insomniac/chances_rotten run data modify entity @s Offers.Recipes prepend value {maxUses:5,buy:{id:"minecraft:gunpowder",Count:5b},sell:{id:"minecraft:emerald",Count:1b}}

# Goods
execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes prepend value {maxUses:3,buy:{id:"minecraft:emerald",Count:12b},sell:{id:"minecraft:mycelium",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes prepend value {maxUses:3,buy:{id:"minecraft:emerald",Count:10b},sell:{id:"minecraft:honeycomb",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes prepend value {maxUses:3,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:compass",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes prepend value {maxUses:3,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:clock",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes prepend value {maxUses:3,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:name_tag",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes prepend value {maxUses:3,buy:{id:"minecraft:emerald",Count:20b},sell:{id:"minecraft:lodestone",Count:1b}}

execute if predicate pht:chance/insomniac/chances_goods run data modify entity @s Offers.Recipes prepend value {maxUses:3,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:saddle",Count:1b}}
tag @s add manic.found
data remove entity @s Offers.Recipes
data modify entity @s WanderTarget.X set from entity @p Pos[0]
data modify entity @s WanderTarget.Y set from entity @p Pos[1]
data modify entity @s WanderTarget.Z set from entity @p Pos[2]

## Common
function manic:entity/insomniac/trades/buy/emerald
function manic:entity/insomniac/trades/buy/blight_mold
execute if predicate manic:chance/coinflip run function manic:entity/insomniac/trades/buy/spectre_gelatin
execute if predicate manic:chance/coinflip run function manic:entity/insomniac/trades/buy/pumpkin_pop
execute if predicate manic:chance/coinflip run function manic:entity/insomniac/trades/buy/spectral_arrow

## Treasure
#execute if predicate manic:chance/insomniac/chances_rare run function manic:entity/insomniac/trades/buy/music_disc_respite

# Get Moonstone
function manic:entity/insomniac/trades/sell/rotten_flesh
function manic:entity/insomniac/trades/sell/bone
execute if predicate manic:chance/insomniac/chances_rotten run function manic:entity/insomniac/trades/sell/spider_eye
execute if predicate manic:chance/insomniac/chances_rotten run function manic:entity/insomniac/trades/sell/gunpowder
execute if predicate manic:chance/insomniac/chances_rotten run function manic:entity/insomniac/trades/sell/ender_pearl
execute if predicate manic:chance/insomniac/chances_rotten run function manic:entity/insomniac/trades/sell/phantom_membrane
execute if predicate manic:chance/insomniac/chances_rotten run function manic:entity/insomniac/trades/sell/necroplasm
execute if predicate manic:chance/insomniac/chances_rotten run function manic:entity/insomniac/trades/sell/reticulum
execute if predicate manic:chance/insomniac/chances_rotten run function manic:entity/insomniac/trades/sell/vacuole

# Rare
execute if predicate manic:chance/insomniac/chances_goods run function manic:entity/insomniac/trades/buy/mycelium
execute if predicate manic:chance/insomniac/chances_goods run function manic:entity/insomniac/trades/buy/honeycomb
execute if predicate manic:chance/insomniac/chances_goods run function manic:entity/insomniac/trades/buy/compass
execute if predicate manic:chance/insomniac/chances_goods run function manic:entity/insomniac/trades/buy/clock
execute if predicate manic:chance/insomniac/chances_goods run function manic:entity/insomniac/trades/buy/name_tag
execute if predicate manic:chance/insomniac/chances_goods run function manic:entity/insomniac/trades/buy/lodestone
execute if predicate manic:chance/insomniac/chances_goods run function manic:entity/insomniac/trades/buy/saddle
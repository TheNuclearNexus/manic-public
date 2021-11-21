tag @s add pht.found
data remove entity @s Offers.Recipes

# Guaranteed
function pht:entity/insomniac/trades/buy/blight_mold
function pht:entity/insomniac/trades/buy/pumpkin_pop

execute if predicate pht:chance/insomniac/chances_rare run function pht:entity/insomniac/trades/buy/music_disc_respite

# Get Moonstone
function pht:entity/insomniac/trades/sell/rotten_flesh
function pht:entity/insomniac/trades/sell/bone

execute if predicate pht:chance/insomniac/chances_rotten run function pht:entity/insomniac/trades/sell/spider_eye
execute if predicate pht:chance/insomniac/chances_rotten run function pht:entity/insomniac/trades/sell/gunpowder
execute if predicate pht:chance/insomniac/chances_rotten run function pht:entity/insomniac/trades/sell/ender_pearl
execute if predicate pht:chance/insomniac/chances_rotten run function pht:entity/insomniac/trades/sell/phantom_membrane
execute if predicate pht:chance/insomniac/chances_rotten run function pht:entity/insomniac/trades/sell/ectoplasm
execute if predicate pht:chance/insomniac/chances_rotten run function pht:entity/insomniac/trades/sell/reticulum

# Goods
function pht:entity/insomniac/trades/buy/emerald
execute if predicate pht:chance/insomniac/chances_goods run function pht:entity/insomniac/trades/buy/mycelium
execute if predicate pht:chance/insomniac/chances_goods run function pht:entity/insomniac/trades/buy/honeycomb
execute if predicate pht:chance/insomniac/chances_goods run function pht:entity/insomniac/trades/buy/compass
execute if predicate pht:chance/insomniac/chances_goods run function pht:entity/insomniac/trades/buy/clock
execute if predicate pht:chance/insomniac/chances_goods run function pht:entity/insomniac/trades/buy/name_tag
execute if predicate pht:chance/insomniac/chances_goods run function pht:entity/insomniac/trades/buy/lodestone
execute if predicate pht:chance/insomniac/chances_goods run function pht:entity/insomniac/trades/buy/saddle
execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"corpsebloom"}}}},nbt=!{Inventory:[{tag:{pht:{id:"corpsebloom"}},Slot:-106b}]}] run function pht:entity/corpsebloom/preattempt

scoreboard players reset @s pht.use_coas

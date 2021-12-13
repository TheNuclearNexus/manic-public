execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"corpsebloom"}}}},nbt=!{Inventory:[{tag:{pht:{id:"corpsebloom"}},Slot:-106b}]}] run function pht:entity/corpsebloom/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"blight_mold"}}}},nbt=!{Inventory:[{tag:{pht:{id:"blight_mold"}},Slot:-106b}]}] run function pht:item/blight_mold/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"corpsegourd"}}}},nbt=!{Inventory:[{tag:{pht:{id:"corpsegourd"}},Slot:-106b}]}] run function pht:entity/corpsegourd/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"corpsepitcher"}}}},nbt=!{Inventory:[{tag:{pht:{id:"corpsepitcher"}},Slot:-106b}]}] run function pht:entity/corpsepitcher/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"corpsethorn"}}}},nbt=!{Inventory:[{tag:{pht:{id:"corpsethorn"}},Slot:-106b}]}] run function pht:entity/corpsethorn/preattempt

execute if score @s pht.sanity matches 1111.. unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"talisman"},CustomModelData:8360003}}},nbt=!{Inventory:[{tag:{pht:{id:"talisman"},CustomModelData:8360003},Slot:-106b}]}] run function pht:item/talisman/turn_on
execute unless entity @s[tag=pht.talisman.on] run execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"talisman"},CustomModelData:8360004}}},nbt=!{Inventory:[{tag:{pht:{id:"talisman"},CustomModelData:8360004},Slot:-106b}]}] run function pht:item/talisman/turn_off
tag @s remove pht.talisman.on

execute unless entity @s[nbt=!{SelectedItem:{tag:{pht:{id:"corpseflute"}}}},nbt=!{Inventory:[{tag:{pht:{id:"corpseflute"}},Slot:-106b}]}] run function pht:item/corpseflute/use

scoreboard players reset @s pht.use_coas

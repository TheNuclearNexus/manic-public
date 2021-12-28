execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"corpsebloom"}}}},nbt=!{Inventory:[{tag:{manic:{id:"corpsebloom"}},Slot:-106b}]}] run function manic:entity/corpsebloom/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"blight_mold"}}}},nbt=!{Inventory:[{tag:{manic:{id:"blight_mold"}},Slot:-106b}]}] run function manic:item/blight_mold/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"corpsegourd"}}}},nbt=!{Inventory:[{tag:{manic:{id:"corpsegourd"}},Slot:-106b}]}] run function manic:entity/corpsegourd/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"corpsepitcher"}}}},nbt=!{Inventory:[{tag:{manic:{id:"corpsepitcher"}},Slot:-106b}]}] run function manic:entity/corpsepitcher/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"corpsethorn"}}}},nbt=!{Inventory:[{tag:{manic:{id:"corpsethorn"}},Slot:-106b}]}] run function manic:entity/corpsethorn/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"podium"}}}},nbt=!{Inventory:[{tag:{manic:{id:"podium"}},Slot:-106b}]}] run function manic:entity/podium/preattempt

execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"altar"}}}},nbt=!{Inventory:[{tag:{manic:{id:"altar"}},Slot:-106b}]}] run function manic:entity/altar/preattempt

execute if score @s manic.sanity matches 1111.. unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"talisman"},CustomModelData:8360003}}},nbt=!{Inventory:[{tag:{manic:{id:"talisman"},CustomModelData:8360003},Slot:-106b}]}] run function manic:item/talisman/turn_on
execute unless entity @s[tag=manic.talisman.on] run execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"talisman"},CustomModelData:8360004}}},nbt=!{Inventory:[{tag:{manic:{id:"talisman"},CustomModelData:8360004},Slot:-106b}]}] run function manic:item/talisman/turn_off
tag @s remove manic.talisman.on

execute unless entity @s[nbt=!{SelectedItem:{tag:{manic:{id:"corpseflute"}}}},nbt=!{Inventory:[{tag:{manic:{id:"corpseflute"}},Slot:-106b}]}] run function manic:item/corpseflute/use

scoreboard players reset @s manic.use_coas

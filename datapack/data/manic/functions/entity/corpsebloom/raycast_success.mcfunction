item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"corpsebloom"}}}]},nbt=!{SelectedItem:{tag:{manic:{id:"corpsebloom"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{manic:{id:"corpsebloom"}}}}] weapon.mainhand with air
scoreboard players reset @s manic.dummy4
execute if predicate manic:corpsebloom/fertilised run tag @s add manic.fertilised
function manic:entity/corpsebloom/create
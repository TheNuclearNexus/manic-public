item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{pht:{id:"corpsebloom"}}}]},nbt=!{SelectedItem:{tag:{pht:{id:"corpsebloom"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{pht:{id:"corpsebloom"}}}}] weapon.mainhand with air
scoreboard players reset @s pht.dummy4
function pht:entity/corpsebloom/create
item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"corpsegourd"}}}]},nbt=!{SelectedItem:{tag:{manic:{id:"corpsegourd"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{manic:{id:"corpsegourd"}}}}] weapon.mainhand with air
scoreboard players reset @s manic.dummy4
function manic:entity/corpsegourd/create
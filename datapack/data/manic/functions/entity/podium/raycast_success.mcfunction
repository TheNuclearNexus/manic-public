item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"podium"}}}]},nbt=!{SelectedItem:{tag:{manic:{id:"podium"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{manic:{id:"podium"}}}}] weapon.mainhand with air
scoreboard players reset @s manic.dummy4
function manic:entity/podium/create
item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"corpsethorn"}}}]},nbt=!{SelectedItem:{tag:{manic:{id:"corpsethorn"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{manic:{id:"corpsethorn"}}}}] weapon.mainhand with air
scoreboard players reset @s manic.dummy4
function manic:entity/corpsethorn/create
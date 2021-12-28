item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"blight_mold"}}}]},nbt=!{SelectedItem:{tag:{manic:{id:"blight_mold"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{manic:{id:"blight_mold"}}}}] weapon.mainhand with air
scoreboard players reset @s manic.dummy4
function manic:item/blight_mold/create
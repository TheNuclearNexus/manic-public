item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{pht:{id:"blight_mold"}}}]},nbt=!{SelectedItem:{tag:{pht:{id:"blight_mold"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{pht:{id:"blight_mold"}}}}] weapon.mainhand with air
scoreboard players reset @s pht.dummy4
function pht:item/blight_mold/create
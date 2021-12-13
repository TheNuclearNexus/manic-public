item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{pht:{id:"corpsethorn"}}}]},nbt=!{SelectedItem:{tag:{pht:{id:"corpsethorn"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{pht:{id:"corpsethorn"}}}}] weapon.mainhand with air
scoreboard players reset @s pht.dummy4
function pht:entity/corpsethorn/create
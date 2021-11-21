item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{pht:{id:"corpsegourd"}}}]},nbt=!{SelectedItem:{tag:{pht:{id:"corpsegourd"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{pht:{id:"corpsegourd"}}}}] weapon.mainhand with air
scoreboard players reset @s pht.dummy4
function pht:entity/corpsegourd/create
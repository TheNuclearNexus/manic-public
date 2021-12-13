item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{pht:{id:"corpsepitcher"}}}]},nbt=!{SelectedItem:{tag:{pht:{id:"corpsepitcher"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{pht:{id:"corpsepitcher"}}}}] weapon.mainhand with air
scoreboard players reset @s pht.dummy4
function pht:entity/corpsepitcher/create
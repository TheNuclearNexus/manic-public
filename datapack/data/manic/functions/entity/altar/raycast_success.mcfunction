item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"altar"}}}]},nbt=!{SelectedItem:{tag:{manic:{id:"altar"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{manic:{id:"altar"}}}}] weapon.mainhand with air
scoreboard players reset @s manic.dummy4
function manic:entity/altar/create
# On -> Off
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"talisman"},CustomModelData:8360004}}]},nbt=!{SelectedItem:{tag:{manic:{id:"talisman"},CustomModelData:8360004}}}] weapon.offhand manic:talisman_off
item modify entity @s[nbt={SelectedItem:{tag:{manic:{id:"talisman"},CustomModelData:8360004}}}] weapon.mainhand manic:talisman_off

playsound manic:item.talisman.off player @a

scoreboard players add @s manic.sanity 1111
function manic:player/sanity_display
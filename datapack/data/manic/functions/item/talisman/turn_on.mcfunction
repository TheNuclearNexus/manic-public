tag @s add manic.talisman.on

# Off -> On
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"talisman"},CustomModelData:8360003}}]},nbt=!{SelectedItem:{tag:{manic:{id:"talisman"},CustomModelData:8360003}}}] weapon.offhand manic:talisman_on
item modify entity @s[nbt={SelectedItem:{tag:{manic:{id:"talisman"},CustomModelData:8360003}}}] weapon.mainhand manic:talisman_on

playsound manic:item.talisman.on player @a

scoreboard players remove @s manic.sanity 1111
function manic:player/sanity_display

advancement grant @s only manic:mania/talisman
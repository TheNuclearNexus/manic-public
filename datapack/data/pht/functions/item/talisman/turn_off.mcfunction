# On -> Off
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{pht:{id:"talisman"},CustomModelData:8360004}}]},nbt=!{SelectedItem:{tag:{pht:{id:"talisman"},CustomModelData:8360004}}}] weapon.offhand pht:talisman_off
item modify entity @s[nbt={SelectedItem:{tag:{pht:{id:"talisman"},CustomModelData:8360004}}}] weapon.mainhand pht:talisman_off

playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 1 0.75

scoreboard players add @s pht.sanity 1111
function pht:player/sanity_display
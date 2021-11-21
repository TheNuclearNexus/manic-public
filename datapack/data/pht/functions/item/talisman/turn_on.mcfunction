tag @s add pht.talisman.on

# Off -> On
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{pht:{id:"talisman"},CustomModelData:8360003}}]},nbt=!{SelectedItem:{tag:{pht:{id:"talisman"},CustomModelData:8360003}}}] weapon.offhand pht:talisman_on
item modify entity @s[nbt={SelectedItem:{tag:{pht:{id:"talisman"},CustomModelData:8360003}}}] weapon.mainhand pht:talisman_on

playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 1 1.5

scoreboard players remove @s pht.sanity 1111
function pht:player/sanity_display

advancement grant @s only pht:ingame/talisman
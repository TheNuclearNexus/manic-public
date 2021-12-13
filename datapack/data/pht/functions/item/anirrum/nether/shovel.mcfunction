scoreboard players reset @s pht.n.shovel

execute if entity @s[nbt={SelectedItem:{tag:{pht:{tool:"anirrum"}}}}] unless entity @s[nbt={Inventory:[{tag:{pht:{tool:"anirrum"}},Slot:-106b}]}] run function pht:item/anirrum/nether/remove_shovel_sanity
execute if entity @s[nbt={Inventory:[{tag:{pht:{tool:"anirrum"}},Slot:-106b}]}] run function pht:item/anirrum/nether/remove_shovel_sanity
scoreboard players reset @s pht.n.axe

execute if entity @s[nbt={SelectedItem:{tag:{pht:{tool:"anirrum"}}}}] unless entity @s[nbt={Inventory:[{tag:{pht:{tool:"anirrum"}},Slot:-106b}]}] run function pht:item/anirrum/nether/remove_axe_sanity
execute if entity @s[nbt={Inventory:[{tag:{pht:{tool:"anirrum"}},Slot:-106b}]}] run function pht:item/anirrum/nether/remove_axe_sanity
scoreboard players reset @s pht.n.sword

execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{pht:{tool:"anirrum"}}}}] run function pht:item/anirrum/nether/remove_sanity
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{pht:{tool:"anirrum"}}}}] if score @s pht.sanity matches ..2222 run effect give @s weakness 10 2
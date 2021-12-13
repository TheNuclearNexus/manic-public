scoreboard players reset @s pht.pickaxe

execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{pht:{tool:"anirrum"}}}}] run function pht:item/anirrum/remove_sanity
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{pht:{tool:"anirrum"}}}}] if score @s pht.sanity matches ..2222 run effect give @s mining_fatigue 10 2
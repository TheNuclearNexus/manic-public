scoreboard players reset @s manic.n.pickaxe

execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",Count:1b,tag:{manic:{tool:"anirrum"}}}}] run function manic:item/anirrum/nether/remove_sanity
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",Count:1b,tag:{manic:{tool:"anirrum"}}}}] if score @s manic.sanity matches ..2222 run effect give @s mining_fatigue 10 2
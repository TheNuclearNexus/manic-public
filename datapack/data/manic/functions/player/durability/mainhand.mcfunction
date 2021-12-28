execute store result score #manic.current_durability manic.default run data get entity @s SelectedItem.tag.Damage
scoreboard players operation #manic.current_durability manic.default += @s manic.default
execute store result storage manic:durability Result int 1 run scoreboard players get #manic.current_durability manic.default
item modify entity @s weapon.mainhand manic:durability
scoreboard players reset @s manic.default
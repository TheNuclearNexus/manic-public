execute as @s[tag=manic.interact.podium_add] if data entity @s SelectedItem as @e[tag=manic.podium.empty,sort=nearest,limit=1] at @s run function manic:entity/podium/interact/add_end
execute as @s[tag=manic.interact.podium_empty] as @e[tag=manic.podium.full,sort=nearest,limit=1] at @s run function manic:entity/podium/interact/empty_end
tag @s remove manic.interact.podium_add
tag @s remove manic.interact.podium_empty

# End
tag @s remove manic.interact
#raycast
function manic:entity/corpsepitcher/interact/raycast

#change id
data modify entity @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] HandItems[1] set from entity @s SelectedItem
execute as @e[type=wandering_trader,tag=manic.target,distance=..5,sort=nearest,limit=1] at @s run function manic:entity/corpsepitcher/interact/id

execute if entity @s[gamemode=!creative] run function manic:entity/corpsepitcher/interact/modify

#revoke and misc
advancement revoke @s only manic:technical/raycast/corpsepitcher/fill_a
advancement revoke @s only manic:technical/raycast/corpsepitcher/fill
advancement revoke @s only manic:technical/raycast/corpsepitcher/reticulum
advancement revoke @s only manic:technical/raycast/corpsepitcher/ferment
advancement revoke @s only manic:technical/raycast/corpsepitcher/wine
advancement revoke @s only manic:technical/raycast/corpsepitcher/cheese

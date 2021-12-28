function manic:entity/podium/interact/remove_item
playsound manic:entity.podium.clink block @a[distance=0..16] ~ ~ ~ 1 0.75

setblock ~ ~ ~ air

tag @s remove manic.podium.full
tag @s add manic.podium.empty
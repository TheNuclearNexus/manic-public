advancement grant @s only pht:ingame/anirrum

tag @s add pht.interact.freeze_anirrum
tag @s add pht.interact.empty_pitcher
tag @s add pht.interact
function pht:entity/corpsepitcher/raycast/raycast

item replace entity @s weapon.mainhand with minecraft:bucket
playsound minecraft:block.lava.extinguish player @a[distance=0..16] ~ ~ ~ 0.5 1
playsound minecraft:entity.wither.ambient player @a[distance=0..16] ~ ~ ~ 0.05 2

advancement revoke @s only pht:raycast/corpsepitcher/freeze_anirrum
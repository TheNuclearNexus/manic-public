item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360059}
scoreboard players set @s pht.pitcher 2
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.lava
setblock ~ ~ ~ light[level=15]
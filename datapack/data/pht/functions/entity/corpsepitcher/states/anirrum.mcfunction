item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360060}
scoreboard players set @s pht.pitcher 3
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.anirrum
setblock ~ ~ ~ light[level=10]
item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360082}
scoreboard players set @s pht.pitcher 13
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.chorus_wine
setblock ~ ~ ~ light[level=5]
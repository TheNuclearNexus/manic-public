item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360064}
scoreboard players set @s pht.pitcher 7
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.glow_berry_wine
setblock ~ ~ ~ light[level=5]
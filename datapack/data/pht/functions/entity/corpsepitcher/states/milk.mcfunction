item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360065}
scoreboard players set @s pht.pitcher 8
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.milk
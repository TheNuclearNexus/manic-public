item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360057}
scoreboard players set @s pht.pitcher 0
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.close
tag @s remove pht.pitcher.open
execute if block ~ ~ ~ light run setblock ~ ~ ~ air
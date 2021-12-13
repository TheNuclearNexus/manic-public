item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360058}
scoreboard players set @s pht.pitcher 1
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.open
tag @s add pht.pitcher.empty
execute if block ~ ~ ~ light run setblock ~ ~ ~ air
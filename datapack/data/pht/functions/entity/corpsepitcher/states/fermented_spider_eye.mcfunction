item replace entity @s weapon.mainhand with slime_ball{CustomModelData:8360062}
scoreboard players set @s pht.pitcher 5
function pht:entity/corpsepitcher/states/remove_tags
tag @s add pht.pitcher.fermented_spider_eye
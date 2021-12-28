playsound manic:manic.item.blight_mold block @a
execute if block ~ ~ ~ minecraft:sunflower[half=upper] run function manic:item/blight_mold/sunflower/top
execute if block ~ ~ ~ minecraft:sunflower[half=lower] run function manic:item/blight_mold/sunflower/bottom
execute if block ~ ~ ~ #manic:pumpkins run function manic:item/blight_mold/pumpkin
execute if block ~ ~ ~ #minecraft:saplings run function manic:item/blight_mold/kill_sapling
execute if block ~ ~ ~ #manic:bamboo run function manic:item/blight_mold/bamboo
execute if block ~ ~ ~ #manic:dripleaf run function manic:item/blight_mold/dripleaf
execute if block ~ ~ ~ minecraft:cactus run function manic:item/blight_mold/cactus


## CONVERT BLOCKS
execute unless block ~ ~-1 ~ #manic:air run function manic:item/blight_mold/convert
execute if block ~ ~-1 ~ #manic:air positioned ~ ~-1 ~ run function manic:item/blight_mold/convert
function manic:item/blight_mold/retry
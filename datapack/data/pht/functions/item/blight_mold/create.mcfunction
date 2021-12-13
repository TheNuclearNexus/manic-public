playsound pht:pht.item.blight_mold block @a
execute if block ~ ~ ~ minecraft:sunflower[half=upper] run function pht:item/blight_mold/sunflower/top
execute if block ~ ~ ~ minecraft:sunflower[half=lower] run function pht:item/blight_mold/sunflower/bottom
execute if block ~ ~ ~ #pht:pumpkins run function pht:item/blight_mold/pumpkin
execute if block ~ ~ ~ #minecraft:saplings run function pht:item/blight_mold/kill_sapling
execute if block ~ ~ ~ #pht:bamboo run function pht:item/blight_mold/bamboo
execute if block ~ ~ ~ #pht:dripleaf run function pht:item/blight_mold/dripleaf
execute if block ~ ~ ~ minecraft:cactus run function pht:item/blight_mold/cactus


## CONVERT BLOCKS
execute unless block ~ ~-1 ~ #pht:air run function pht:item/blight_mold/convert
execute if block ~ ~-1 ~ #pht:air positioned ~ ~-1 ~ run function pht:item/blight_mold/convert
function pht:item/blight_mold/retry
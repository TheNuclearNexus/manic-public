particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0 10

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 dead_bush replace #minecraft:saplings
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #manic:blight_mold_destroy

execute if block ~ ~-1 ~ coarse_dirt run setblock ~ ~-1 ~ soul_soil
execute if block ~ ~-2 ~ coarse_dirt run setblock ~ ~-2 ~ soul_soil
execute if block ~ ~-1 ~ #manic:blight_mold_coarse run setblock ~ ~-1 ~ coarse_dirt
execute if block ~ ~-2 ~ #manic:blight_mold_coarse run setblock ~ ~-2 ~ coarse_dirt

## CONVERT TO SOUL SAND
execute if block ~-1 ~-1 ~ #minecraft:sand if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~ soul_sand
execute if block ~1 ~-1 ~ #minecraft:sand if predicate manic:chance/coinflip run setblock ~1 ~-1 ~ soul_sand
execute if block ~ ~-1 ~-1 #minecraft:sand if predicate manic:chance/coinflip run setblock ~ ~-1 ~-1 soul_sand
execute if block ~ ~-1 ~1 #minecraft:sand if predicate manic:chance/coinflip run setblock ~ ~-1 ~1 soul_sand

execute if block ~-1 ~-1 ~-1 #minecraft:sand if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~-1 soul_sand
execute if block ~1 ~-1 ~-1 #minecraft:sand if predicate manic:chance/coinflip run setblock ~1 ~-1 ~-1 soul_sand
execute if block ~1 ~-1 ~1 #minecraft:sand if predicate manic:chance/coinflip run setblock ~1 ~-1 ~1 soul_sand
execute if block ~-1 ~-1 ~1 #minecraft:sand if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~1 soul_sand

execute if block ~-2 ~-1 ~ #minecraft:sand if predicate manic:chance/coinflip run setblock ~-2 ~-1 ~ soul_sand
execute if block ~2 ~-1 ~ #minecraft:sand if predicate manic:chance/coinflip run setblock ~2 ~-1 ~ soul_sand
execute if block ~ ~-1 ~-2 #minecraft:sand if predicate manic:chance/coinflip run setblock ~ ~-1 ~-2 soul_sand
execute if block ~ ~-1 ~2 #minecraft:sand if predicate manic:chance/coinflip run setblock ~ ~-1 ~2 soul_sand

## CONVERT TO SOUL SOIL
execute if block ~-1 ~-1 ~ coarse_dirt if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~ soul_soil
execute if block ~1 ~-1 ~ coarse_dirt if predicate manic:chance/coinflip run setblock ~1 ~-1 ~ soul_soil
execute if block ~ ~-1 ~-1 coarse_dirt if predicate manic:chance/coinflip run setblock ~ ~-1 ~-1 soul_soil
execute if block ~ ~-1 ~1 coarse_dirt if predicate manic:chance/coinflip run setblock ~ ~-1 ~1 soul_soil

execute if block ~-1 ~-1 ~-1 coarse_dirt if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~-1 soul_soil
execute if block ~1 ~-1 ~-1 coarse_dirt if predicate manic:chance/coinflip run setblock ~1 ~-1 ~-1 soul_soil
execute if block ~1 ~-1 ~1 coarse_dirt if predicate manic:chance/coinflip run setblock ~1 ~-1 ~1 soul_soil
execute if block ~-1 ~-1 ~1 coarse_dirt if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~1 soul_soil

execute if block ~-2 ~-1 ~ coarse_dirt if predicate manic:chance/coinflip run setblock ~-2 ~-1 ~ soul_soil
execute if block ~2 ~-1 ~ coarse_dirt if predicate manic:chance/coinflip run setblock ~2 ~-1 ~ soul_soil
execute if block ~ ~-1 ~-2 coarse_dirt if predicate manic:chance/coinflip run setblock ~ ~-1 ~-2 soul_soil
execute if block ~ ~-1 ~2 coarse_dirt if predicate manic:chance/coinflip run setblock ~ ~-1 ~2 soul_soil

## CONVERT TO COARSE DIRT
execute if block ~-1 ~-1 ~ #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~ coarse_dirt
execute if block ~1 ~-1 ~ #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~1 ~-1 ~ coarse_dirt
execute if block ~ ~-1 ~-1 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~ ~-1 ~-1 coarse_dirt
execute if block ~ ~-1 ~1 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~ ~-1 ~1 coarse_dirt

execute if block ~-1 ~-1 ~-1 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~-1 coarse_dirt
execute if block ~1 ~-1 ~-1 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~1 ~-1 ~-1 coarse_dirt
execute if block ~1 ~-1 ~1 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~1 ~-1 ~1 coarse_dirt
execute if block ~-1 ~-1 ~1 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~-1 ~-1 ~1 coarse_dirt

execute if block ~-2 ~-1 ~ #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~-2 ~-1 ~ coarse_dirt
execute if block ~2 ~-1 ~ #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~2 ~-1 ~ coarse_dirt
execute if block ~ ~-1 ~-2 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~ ~-1 ~-2 coarse_dirt
execute if block ~ ~-1 ~2 #manic:blight_mold_coarse if predicate manic:chance/coinflip run setblock ~ ~-1 ~2 coarse_dirt
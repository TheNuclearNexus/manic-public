summon minecraft:marker ~ ~ ~ {Tags:["smithed.entity","global.ignore","kiko.root","kiko.element","manic.keeper.kiko_element","kiko.temp","manic.keeper.root"]}
summon area_effect_cloud ~0.3125 ~1.25 ~-0.3125 {NoGravity:1b,Radius:0f,Duration:9999999,Age:0,Tags:["smithed.entity","global.ignore","manic.keeper.torso","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["smithed.entity","global.ignore","manic.keeper.torso","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:8360000}}]}]}
summon area_effect_cloud ~0.9375 ~1.875 ~-0.3125 {NoGravity:1b,Radius:0f,Duration:9999999,Age:0,Tags:["smithed.entity","global.ignore","manic.keeper.leftarm","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["smithed.entity","global.ignore","manic.keeper.leftarm","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:8360001}}]}]}
summon area_effect_cloud ~-0.3125 ~1.875 ~-0.3125 {NoGravity:1b,Radius:0f,Duration:9999999,Age:0,Tags:["smithed.entity","global.ignore","manic.keeper.rightarm","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["smithed.entity","global.ignore","manic.keeper.rightarm","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:8360002}}]}]}
summon area_effect_cloud ~0.3125 ~2.125 ~-0.125 {NoGravity:1b,Radius:0f,Duration:9999999,Age:0,Tags:["smithed.entity","global.ignore","manic.keeper.head","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["smithed.entity","global.ignore","manic.keeper.head","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:8360003}}]}]}
summon area_effect_cloud ~0.3125 ~2.25 ~-0.1875 {NoGravity:1b,Radius:0f,Duration:9999999,Age:0,Tags:["smithed.entity","global.ignore","manic.keeper.jaw","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["smithed.entity","global.ignore","manic.keeper.jaw","kiko.bone","kiko.element","manic.keeper.kiko_element","kiko.temp"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:8360004}}]}]}
execute as @e[tag=kiko.temp] at @s run execute store result score @s kiko.id run data get entity @e[limit=1,sort=nearest,type=minecraft:marker,tag=kiko.temp] UUID[0]
tag @e remove kiko.temp
function manic:animations/keeper/check_for_model
function manic:player/schizoid_hurt_player
function manic:player/impact_blindness
effect give @s minecraft:slowness 1 1

tag @s add manic.damage.eidolon
execute if score #manic.difficulty manic.dummy matches 1 run scoreboard players set @s manic.damage 4
execute if score #manic.difficulty manic.dummy matches 2 run scoreboard players set @s manic.damage 6
execute if score #manic.difficulty manic.dummy matches 3 run scoreboard players set @s manic.damage 9
function manic:player/damage/apply/projectile
tag @s remove manic.damage.eidolon
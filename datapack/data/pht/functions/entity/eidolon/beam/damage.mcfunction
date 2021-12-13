function pht:player/schizoid_hurt_player
effect give @s minecraft:slowness 1 1

tag @s add pht.damage.eidolon
execute if score #pht.difficulty pht.dummy matches 1 run scoreboard players set @s pht.damage 4
execute if score #pht.difficulty pht.dummy matches 2 run scoreboard players set @s pht.damage 6
execute if score #pht.difficulty pht.dummy matches 3 run scoreboard players set @s pht.damage 9
function pht:player/damage/apply/projectile
tag @s remove pht.damage.eidolon
data remove entity @s Offers.Recipes
execute if predicate pht:chance/ambient run playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1

execute if entity @s[tag=pht.empty_sanity] run scoreboard players set @s pht.n_timer 0

# Player Detection
execute if entity @a[distance=..10,gamemode=!spectator,gamemode=!creative] run tag @s add pht.player_nearby
execute if entity @a[distance=..15,gamemode=!spectator,gamemode=!creative] run tag @s add pht.reset
execute unless entity @s[tag=pht.reset] run tag @s remove pht.casting
execute unless entity @s[tag=pht.reset] run scoreboard players set @s pht.n_timer 2
execute unless entity @s[tag=pht.reset] run scoreboard players reset @s pht.dummy3
tag @s remove pht.reset

# Update
execute if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator] unless entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] run function pht:entity/necromancer/attack/pathfind
execute if entity @a[distance=..12,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s pht.n_timer 1

execute if score @s pht.n_timer matches 1 run scoreboard players reset @s pht.dummy3
execute if score @s pht.n_timer matches 2 if predicate pht:chance/coinflip run scoreboard players set @s pht.n_timer 7
# Attack A
execute if score @s pht.n_timer matches 3 if entity @e[tag=pht.hex,distance=..12] run scoreboard players reset @s pht.n_timer
execute if score @s pht.n_timer matches 4 if entity @s[tag=pht.player_nearby] run tag @s add pht.casting
execute if score @s pht.n_timer matches 4 if entity @s[tag=pht.player_nearby] run playsound minecraft:entity.evoker.cast_spell hostile @a
execute if score @s pht.n_timer matches 5 run function pht:entity/necromancer/attack/cast
execute if score @s pht.n_timer matches 5 if predicate pht:chance/coinflip unless score @s pht.dummy3 matches 3.. run scoreboard players set @s pht.n_timer 4
execute if score @s pht.n_timer matches 5 run tag @s remove pht.casting
execute if score @s pht.n_timer matches 6 run scoreboard players reset @s pht.n_timer

# Attack B
execute if score @s pht.n_timer matches 9 if entity @e[tag=pht.skeleton,distance=..12] run scoreboard players reset @s pht.n_timer
execute if score @s pht.n_timer matches 10 if entity @s[tag=pht.player_nearby] run tag @s add pht.casting
execute if score @s pht.n_timer matches 10 if entity @s[tag=pht.player_nearby] run playsound minecraft:entity.evoker.cast_spell hostile @a
execute if score @s pht.n_timer matches 11 run function pht:entity/necromancer/attack/cast_skeleton
execute if score @s pht.n_timer matches 12.. run scoreboard players reset @s pht.n_timer

# Follow
execute if score @s pht.sanity matches 0 if entity @a[distance=..10] run tag @s add pht.casting
execute if score @s pht.sanity matches 0 unless entity @a[distance=..10] run tag @s remove pht.casting
execute if score @s pht.sanity matches 0 unless entity @a[distance=..10] run function pht:entity/necromancer/attack/pathfind
execute if score @s pht.sanity matches 0 run tag @s add pht.empty_sanity
execute if entity @s[tag=pht.empty_sanity] if entity @s[tag=pht.casting] run function pht:entity/necromancer/attack/empty_sanity
execute if score @s[tag=pht.empty_sanity] pht.sanity matches 300.. run function pht:entity/necromancer/attack/undo_sanity

tag @s remove pht.player_nearby
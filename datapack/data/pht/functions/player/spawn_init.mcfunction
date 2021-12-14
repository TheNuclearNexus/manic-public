## Summon Markers
summon marker ~ ~ ~ {Tags:["pht.entity","smithed.entity","global.ignore","pht.spawn_marker"]}
summon marker ~ ~ ~ {Tags:["pht.entity","smithed.entity","global.ignore","pht.spawn_marker"]}
execute if predicate pht:chance/necromorph_spawn run summon marker ~ ~ ~ {Tags:["pht.entity","smithed.entity","global.ignore","pht.spawn_marker"]}
execute if predicate pht:chance/necromorph_spawn run summon marker ~ ~ ~ {Tags:["pht.entity","smithed.entity","global.ignore","pht.spawn_marker"]}

## Init
execute as @e[tag=pht.spawn_marker] at @s run function #pht:entity/spawn_marker/init
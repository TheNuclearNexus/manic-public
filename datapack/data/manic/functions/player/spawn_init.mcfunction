## Summon Markers
summon marker ~ ~ ~ {Tags:["manic.entity","smithed.entity","global.ignore","manic.spawn_marker","manic.spawn_marker.new"]}
summon marker ~ ~ ~ {Tags:["manic.entity","smithed.entity","global.ignore","manic.spawn_marker","manic.spawn_marker.new"]}
execute if predicate manic:chance/spook_spawn run summon marker ~ ~ ~ {Tags:["manic.entity","smithed.entity","global.ignore","manic.spawn_marker","manic.spawn_marker.new"]}
execute if predicate manic:chance/spook_spawn run summon marker ~ ~ ~ {Tags:["manic.entity","smithed.entity","global.ignore","manic.spawn_marker","manic.spawn_marker.new"]}

## Init
execute as @e[tag=manic.spawn_marker.new] at @s run function #manic:entity/spawn_marker/init
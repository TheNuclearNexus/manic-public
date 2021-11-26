execute if entity @s[tag=pht.marker] run function pht:entity/marker/tick
execute if entity @s[tag=pht.marker_phantom] run function pht:entity/marker_phantom/tick
execute if entity @s[tag=pht.marker_insomniac] run function pht:entity/marker_insomniac/tick
execute if entity @s[tag=pht.marker_rev] run function pht:entity/marker_revenant/tick
execute if entity @s[tag=pht.necromorph] run function pht:entity/necromorph/tick_1s
execute if entity @s[tag=pht.revenant] run function pht:entity/revenant/tick_1s
execute if entity @s[tag=pht.corpsebloom] run function pht:entity/corpsebloom/tick_1s
execute if entity @s[tag=pht.corpsebloom.grown] run function pht:entity/corpsebloom/grown/tick_1s
execute if entity @s[tag=pht.snared] run function pht:entity/snared/tick_1s
execute if entity @s[tag=pht.snare] run function pht:entity/snared/tick_1s_snare
execute if entity @s[tag=pht.corpsegourd] run function pht:entity/corpsegourd/tick_1s
execute if entity @s[tag=pht.corpsegourd.grown] run function pht:entity/corpsegourd/grown/tick_1s
execute if entity @s[tag=pht.insomniac] run function pht:entity/insomniac/tick_1s
execute if entity @s[tag=pht.necromancer] run function pht:entity/necromancer/tick_1s
execute if entity @s[tag=pht.hex] run function pht:entity/hex/tick_1s
execute if entity @s[tag=pht.zombee] run function pht:entity/zombee/tick_1s
execute if entity @s[tag=pht.keeper_spawn] run function pht:entity/keeper/marker
execute if entity @s[tag=pht.keeper] run function pht:entity/keeper/tick_1s
execute if entity @s[tag=pht.keeper_scare] run function pht:entity/keeper/scare_tick

## Wandering Trader
execute if entity @s[type=minecraft:wandering_trader] run effect give @s invisibility 999999 0 true
execute if entity @s[type=minecraft:wandering_trader] run data modify entity @s HandItems[0].tag.pht.fix set value 0
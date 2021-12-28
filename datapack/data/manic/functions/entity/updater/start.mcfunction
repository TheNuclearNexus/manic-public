## Schizoids
execute as @s[tag=pht.necromorph] run function manic:commands/summon/spook
execute as @s[tag=pht.revenant] run function manic:commands/summon/revenant
execute as @s[tag=pht.eidolon] run function manic:commands/summon/eidolon

## Corpseflora
execute as @s[tag=pht.corpsebloom] run function manic:entity/corpsebloom/create
execute as @s[tag=pht.corpsebloom] as @e[tag=manic.corpsebloom,sort=nearest,limit=1] run data modify entity @s Rotation set from entity @e[tag=pht.corpsebloom,sort=nearest,limit=1]
execute as @s[tag=pht.corpsebloom.grown] as @e[tag=manic.corpsebloom,sort=nearest,limit=1] run function manic:entity/corpsebloom/age/adult
execute as @s[tag=pht.corpsegourd] run function manic:entity/corpsegourd/create
execute as @s[tag=pht.corpsegourd] as @e[tag=manic.corpsegourd,sort=nearest,limit=1] run data modify entity @s Rotation set from entity @e[tag=pht.corpsegourd,sort=nearest,limit=1]
execute as @s[tag=pht.corpsepitcher] run function manic:entity/corpsepitcher/create
execute as @s[tag=pht.corpsepitcher] as @e[tag=manic.corpsepitcher,sort=nearest,limit=1] run data modify entity @s Rotation set from entity @e[tag=pht.corpsepitcher,sort=nearest,limit=1]
execute as @s[tag=pht.corpsethorn] run function manic:entity/corpsethorn/create
execute as @s[tag=pht.corpsecreep] run function manic:entity/corpsecreep/spawn

## Other Mobs
execute as @s[tag=pht.zombee] run function manic:commands/summon/zombee
execute as @s[tag=pht.necromancer] run function manic:commands/summon/necromancer

## Podium & Altar
execute as @s[tag=pht.podium] run function manic:entity/podium/create
execute as @s[tag=pht.altar] run function manic:entity/altar/create

# Misc
execute as @s[tag=pht.insomniac] run function manic:entity/chitter/spawn

## Cleanup
tp @s ~ -1000 ~
kill @s
summon vindicator ~ ~ ~ {DeathLootTable:"pht:entities/mansion/vindicator",PersistenceRequired:1b}
item replace entity @e[type=minecraft:vindicator,sort=nearest,limit=1] weapon.mainhand with minecraft:iron_axe
execute if predicate pht:chance/coinflip run tp @e[type=vindicator,sort=nearest,limit=1] ~ -512 ~

fill ~ ~ ~ ~ ~1 ~ minecraft:air

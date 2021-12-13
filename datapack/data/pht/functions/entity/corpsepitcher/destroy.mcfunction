tp @s ~ -512 ~
kill @s
particle block dirt ~ ~0.35 ~ 0.25 0.75 0.25 0 20 force
loot spawn ~ ~ ~ loot pht:item/corpsepitcher
playsound minecraft:block.fungus.break block @a
execute if block ~ ~ ~ light run setblock ~ ~ ~ air

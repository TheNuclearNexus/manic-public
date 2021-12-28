tp @s ~ -512 ~
kill @s
loot spawn ~ ~ ~ loot manic:item/podium
execute as @s[tag=manic.podium.full] run function manic:entity/podium/interact/remove_item
playsound minecraft:block.anvil.break block @a
setblock ~ ~ ~ air
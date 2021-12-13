gamerule showDeathMessages false
kill @s

execute as @s[tag=pht.damage.eidolon] run tellraw @a {"translate":"death.attack.mob","with":[{"selector":"@s"},{"selector":"@e[sort=nearest,limit=1,tag=pht.eidolon]"}]}
execute as @s[tag=pht.damage.the_keeper] run tellraw @a {"translate":"pht.death.eaten","with":[{"selector":"@s"},{"selector":"@e[sort=nearest,limit=1,tag=pht.keeper]"}]}

gamerule showDeathMessages true
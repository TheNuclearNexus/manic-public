advancement revoke @s only pht:use_nametag

execute as @e[tag=pht.necromorph,tag=pht.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"pht.entity.necromorph"}'} run function pht:entity/decay/remove_decay

execute as @e[type=phantom,tag=pht.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"entity.minecraft.phantom"}'} run function pht:entity/decay/remove_decay

execute as @e[tag=pht.hex,tag=pht.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"pht.entity.hex"}'} run function pht:entity/decay/remove_decay

execute as @e[tag=pht.revenant,tag=pht.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"pht.entity.revenant"}'} run function pht:entity/decay/remove_decay

execute as @e[tag=pht.eidolon,tag=pht.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"pht.entity.eidolon"}'} run function pht:entity/decay/remove_decay

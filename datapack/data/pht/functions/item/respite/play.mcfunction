advancement revoke @s only pht:music_disc_respite
tag @a[distance=..64] add pht.stop_11
schedule function pht:item/respite/stop_11 2t
title @a[distance=..64] actionbar {"translate":"pht.item.record.playing_respite","color":"dark_aqua","italic":false}

execute anchored eyes run function pht:item/respite/raycast
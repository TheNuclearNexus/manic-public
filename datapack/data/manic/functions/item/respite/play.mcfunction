advancement revoke @s only manic:technical/music_disc_respite
tag @a[distance=..64] add manic.stop_11
schedule function manic:item/respite/stop_11 2t
title @a[distance=..64] actionbar {"translate":"manic.item.record.playing_respite","color":"dark_aqua","italic":false}

execute anchored eyes run function manic:item/respite/raycast
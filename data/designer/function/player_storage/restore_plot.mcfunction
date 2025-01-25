
execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s ID

say plot restore

data remove storage designer:temp plot
data modify storage designer:temp player_storage.result set value 'designer:temp plot'
data modify storage designer:temp player_storage.path set value 'plot'
execute in minecraft:overworld run function designer:player_storage/get_player_data with storage designer:temp player_storage

summon chest_minecart ~ ~ ~ {Tags:[player_inv,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart ~ ~ ~ {Tags:[player_end,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart ~ ~ ~ {Tags:[player_hot,temp_storage],NoGravity:1b,Invulnerable:1b}

data modify entity @n[type=chest_minecart,distance=..1,tag=player_inv,tag=temp_storage] Items set from storage designer:temp plot.inv
data modify entity @n[type=chest_minecart,distance=..1,tag=player_end,tag=temp_storage] Items set from storage designer:temp plot.end
data modify entity @n[type=chest_minecart,distance=..1,tag=player_hot,tag=temp_storage] Items set from storage designer:temp plot.hot

function designer:player_storage/restore_inv

execute as @e[tag=temp_storage] run data modify entity @s Items set value []
kill @e[tag=temp_storage]

function designer:tp with storage designer:temp plot.Pos

execute as @e[tag=temp_storage] run data remove entity @s Items
kill @e[tag=temp_storage]

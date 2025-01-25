function designer:player_storage/store_inv

say store plot

execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s ID

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_inv] Items
data modify storage designer:temp player_storage.path set value 'plot.inv'
execute in minecraft:overworld run function designer:player_storage/store_player_data with storage designer:temp player_storage

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_hot] Items
data modify storage designer:temp player_storage.path set value 'plot.hot'
execute in minecraft:overworld run function designer:player_storage/store_player_data with storage designer:temp player_storage

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_end] Items
data modify storage designer:temp player_storage.path set value 'plot.end'
execute in minecraft:overworld run function designer:player_storage/store_player_data with storage designer:temp player_storage

execute store result storage designer:temp player_storage.value.X int 1 run data get entity @s Pos[0]
execute store result storage designer:temp player_storage.value.Y int 1 run data get entity @s Pos[1]
execute store result storage designer:temp player_storage.value.Z int 1 run data get entity @s Pos[2]
data modify storage designer:temp player_storage.value.dim set from entity @s Dimension
data modify storage designer:temp player_storage.path set value 'plot.Pos'
execute in minecraft:overworld run function designer:player_storage/store_player_data with storage designer:temp player_storage

execute as @e[tag=temp_storage] run data remove entity @s Items
kill @e[tag=temp_storage]
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
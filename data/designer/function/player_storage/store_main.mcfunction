function designer:player_storage/store_inv

say store main

execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

data modify storage designer:temp player_storage.source set value 'storage designer:temp player_storage.value'

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_inv] Items
data modify storage designer:temp player_storage.path set value 'main.inv'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_hot] Items
data modify storage designer:temp player_storage.path set value 'main.hot'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_end] Items
data modify storage designer:temp player_storage.path set value 'main.end'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

data modify storage designer:temp player_storage.value set from entity @s XpLevel
data modify storage designer:temp player_storage.path set value 'main.xp'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

execute store result storage designer:temp player_storage.value.X int 1 run data get entity @s Pos[0]
execute store result storage designer:temp player_storage.value.Y int 1 run data get entity @s Pos[1]
execute store result storage designer:temp player_storage.value.Z int 1 run data get entity @s Pos[2]
data modify storage designer:temp player_storage.value.dim set from entity @s Dimension
data modify storage designer:temp player_storage.path set value 'main.Pos'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

data modify storage designer:temp player_storage.value.X set from entity @s SpawnX
data modify storage designer:temp player_storage.value.Y set from entity @s SpawnY
data modify storage designer:temp player_storage.value.Z set from entity @s SpawnZ
data modify storage designer:temp player_storage.value.dim set from entity @s SpawnDimension
data modify storage designer:temp player_storage.path set value 'main.Spawn'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

execute as @e[tag=temp_storage] run data remove entity @s Items
kill @e[tag=temp_storage]
clear @s
xp set @s 0 levels
xp set @s 0 points
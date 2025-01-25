
execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s ID

data modify storage designer:temp player_storage.path set value 'plot'
data modify storage designer:temp player_storage.value set from entity @s data.plot
function designer:player_storage/store_player_data with storage designer:temp player_storage

data modify storage designer:temp player_storage.path set value 'main'
data modify storage designer:temp player_storage.value set from entity @s data.main
function designer:player_storage/store_player_data with storage designer:temp player_storage

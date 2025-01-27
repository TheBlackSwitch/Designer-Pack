
execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

data modify storage designer:temp player_storage.source set value 'storage designer:temp player_storage.value'

data modify storage designer:temp player_storage.path set value 'plot'
data modify storage designer:temp player_storage.value set from entity @s data.plot
function theblackswitch:player_storage/set_from with storage designer:temp player_storage

data modify storage designer:temp player_storage.path set value 'main'
data modify storage designer:temp player_storage.value set from entity @s data.main
function theblackswitch:player_storage/set_from with storage designer:temp player_storage

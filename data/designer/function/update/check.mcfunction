forceload add 0 0

##check if the old player storage method is being used and convert it to the new way
execute if entity @e[tag=player_storage] run function designer:update/to_2.0.2/init
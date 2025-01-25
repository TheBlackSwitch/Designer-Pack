$data modify storage designer:player_storage players[$(player_id)].$(path) set from storage designer:temp player_storage.value
data remove storage designer:temp player_storage.value
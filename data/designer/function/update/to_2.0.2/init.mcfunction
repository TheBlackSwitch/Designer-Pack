tellraw @a [{"text": "[⚒ Designer ⚒]: ","color": "blue", "bold": true},{"text":"Detected previous pack version...","color":"yellow","bold":false}]
tellraw @a [{"text": "[⚒ Designer ⚒]: ","color": "blue", "bold": true},{"text":"Updating data of 'designer_pack' to V2.0.2","color": "green","bold":false}]

scoreboard players operation .loops temp = .current tbs.ID
function designer:update/to_2.0.2/gen_list

execute as @e[tag=player_storage] run function designer:update/to_2.0.2/convert_player_storage

kill @e[type=marker,tag=player_storage]
scoreboard players reset .search ID

data modify storage designer:version loaded set value '2.0.2'
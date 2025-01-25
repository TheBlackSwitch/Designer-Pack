data modify storage designer:player_storage players append value {}

scoreboard players remove .loops temp 1
execute if score .loops temp matches 1.. run function designer:update/to_2.0.2/gen_list
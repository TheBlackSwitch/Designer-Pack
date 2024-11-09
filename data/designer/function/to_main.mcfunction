execute in overworld run function designer:player_storage/store_plot
clear @s
execute in overworld run function designer:player_storage/restore_main

tellraw @s [{"text": "[⚒ Designer ⚒]: ","color": "blue", "bold": true},{"text": "Teleporting to back! ", "color": "light_purple", "bold": false},{"score":{"name":"*","objective":"designer"}, "color": "light_purple", "bold": false}]
execute at @s run playsound block.portal.travel master @s ~ ~ ~ 0.3 2

execute if data storage designer:setts {main_gamemode:"survival"} run gamemode survival @s
execute if data storage designer:setts {main_gamemode:"creative"} run gamemode creative @s
execute if data storage designer:setts {main_gamemode:"spectator"} run gamemode spectator @s
execute if data storage designer:setts {main_gamemode:"adventure"} run gamemode adventure @s

effect clear @s

scoreboard players set @s d.state 0
scoreboard players set @s designer -1
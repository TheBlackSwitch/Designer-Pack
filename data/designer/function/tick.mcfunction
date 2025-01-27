
execute as @a unless data entity @s SpawnX run function designer:set_worldspawn

##Ticks
execute if score .5 slow_tick matches 0 as @a at @s run function designer:player
execute as @a at @s run function designer:setts/client/tick
execute if score .5 slow_tick matches 2 run function designer:update_worldspawn
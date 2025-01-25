
execute as @a unless data entity @s SpawnX run function designer:set_worldspawn

##Slow Tick
scoreboard players add .5 d.slow_tick 1
execute if score .5 d.slow_tick matches 5.. run scoreboard players set .5 d.slow_tick 0


##Ticks
execute if score .5 d.slow_tick matches 0 as @a at @s run function designer:player
execute as @a at @s run function designer:setts/client/tick
execute if score .5 d.slow_tick matches 2 run function designer:update_worldspawn
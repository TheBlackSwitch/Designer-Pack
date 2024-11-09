execute if entity @s[tag=has_storage] run return 1
execute unless score .current ID matches 0.. run scoreboard players set .current ID 0
scoreboard players operation @s ID = .current ID

summon marker 0.0 0.0 0.0 {Tags:[player_storage,INIT]}
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,tag=INIT,distance=..1] run scoreboard players operation @s ID = .current ID
execute positioned 0.0 0.0 0.0 run tag @e[type=marker,tag=player_storage,distance=..1] remove INIT

scoreboard players add .current ID 1
tag @s add has_storage
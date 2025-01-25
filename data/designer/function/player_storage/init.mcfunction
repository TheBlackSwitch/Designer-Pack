execute if entity @s[tag=has_storage] run return 1

execute unless score .current ID matches 0.. run scoreboard players set .current ID 0
scoreboard players operation @s ID = .current ID

data modify storage designer:player_storage players append value {}

scoreboard players add .current ID 1
tag @s add has_storage
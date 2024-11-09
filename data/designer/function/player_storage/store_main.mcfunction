function designer:player_storage/store_inv

say store main

scoreboard players operation .search ID = @s ID

execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.main.inv set from entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_inv] Items
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.main.end set from entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_end] Items
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.main.hot set from entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_hot] Items

execute store result score .xp temp run data get entity @s XpLevel
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID store result entity @s data.main.xp int 1 run scoreboard players get .xp temp

data modify storage designer:temp Pos.X set from entity @s Pos[0]
data modify storage designer:temp Pos.Y set from entity @s Pos[1]
data modify storage designer:temp Pos.Z set from entity @s Pos[2]
data modify storage designer:temp Pos.dim set from entity @s Dimension

execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.main.Pos set from storage designer:temp Pos

data modify storage designer:temp Spawn.X set from entity @s SpawnX
data modify storage designer:temp Spawn.Y set from entity @s SpawnY
data modify storage designer:temp Spawn.Z set from entity @s SpawnZ
data modify storage designer:temp Spawn.dim set from entity @s SpawnDimension

execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.main.Spawn set from storage designer:temp Spawn


execute as @e[tag=temp_storage] run data remove entity @s Items
kill @e[tag=temp_storage]
clear @s
xp set @s 0 levels
xp set @s 0 points
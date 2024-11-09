function designer:player_storage/store_inv

say store plot

scoreboard players operation .search ID = @s ID

execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.plot.inv set from entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_inv] Items
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.plot.end set from entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_end] Items
execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.plot.hot set from entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_hot] Items

data modify storage designer:temp Pos.X set from entity @s Pos[0]
data modify storage designer:temp Pos.Y set from entity @s Pos[1]
data modify storage designer:temp Pos.Z set from entity @s Pos[2]
data modify storage designer:temp Pos.dim set from entity @s Dimension

execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify entity @s data.plot.Pos set from storage designer:temp Pos

execute as @e[tag=temp_storage] run data remove entity @s Items
kill @e[tag=temp_storage]
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
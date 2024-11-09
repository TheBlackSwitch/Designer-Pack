scoreboard players operation .search ID = @s ID

say main restore

execute positioned 0.0 0.0 0.0 as @e[type=marker,tag=player_storage,distance=..1] if score @s ID = .search ID run data modify storage designer:temp main set from entity @s data.main

summon chest_minecart 0.0 0.0 0.0 {Tags:[player_inv,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart 0.0 0.0 0.0 {Tags:[player_end,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart 0.0 0.0 0.0 {Tags:[player_hot,temp_storage],NoGravity:1b,Invulnerable:1b}

data modify entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_inv,tag=temp_storage] Items set from storage designer:temp main.inv
data modify entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_end,tag=temp_storage] Items set from storage designer:temp main.end
data modify entity @n[type=chest_minecart,x=0,y=0,z=0,distance=..1,tag=player_hot,tag=temp_storage] Items set from storage designer:temp main.hot

function designer:player_storage/restore_inv

execute store result score @s d.XpLevels run data get storage designer:temp main.xp
function designer:player_storage/restore_xp

function designer:tp with storage designer:temp main.Pos

function designer:set_spawn with storage designer:temp main.Spawn

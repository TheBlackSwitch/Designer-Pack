##Return If the worldspawn didn't change
execute if entity @e[tag=d.worldspawn_marker,distance=..1] run return fail

##Worldspawn changed so edit all player's worldspawn

execute as @a run spawnpoint @s ~ ~ ~
kill @e[tag=d.worldspawn_marker]

summon marker ~ ~ ~ {Tags:["d.worldspawn_marker"]}


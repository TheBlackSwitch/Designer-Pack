schedule function designer:update/check 10s

tellraw @a [{"text":"Designer Pack Reloaded!","color":"green","bold": true}]

execute unless data storage designer:setts generated run function designer:setts/init

##Scoreboards
scoreboard objectives add designer trigger
scoreboard objectives add d.slow_tick dummy
scoreboard objectives add d.state dummy
scoreboard objectives add ID dummy
scoreboard objectives add d.XpLevels dummy
scoreboard objectives add temp dummy

scoreboard objectives add designer_config trigger
scoreboard objectives add d.setts.enable_plot_title dummy
scoreboard objectives add d.setts.plot_gamemode dummy
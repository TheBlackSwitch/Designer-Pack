scoreboard objectives remove ID
scoreboard objectives remove d.slow_tick

tellraw @a [{"text": "[⚒ Designer ⚒]: ","color": "blue", "bold": true},{"text":"Updating data of 'designer_pack' to V2.0.3","color": "green","bold":false}]
data modify storage designer:version loaded set value '2.0.3'
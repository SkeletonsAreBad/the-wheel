# Join message
execute if entity @a[scores={wheel_r27_j=1..}] if entity @a[tag=wheeldeathlink] run tellraw @a ["",{"text":"Death-linked players: ","color":"red"},{"selector":"@a[tag=wheeldeathlink]","color":"dark_red"}]
scoreboard players reset @a wheel_r27_j

# Death-link
execute if entity @a[tag=wheeldeathlink,scores={wheel_r27_d=1..}] run effect give @a[tag=wheeldeathlink] minecraft:instant_damage 1 200 true
execute if entity @a[tag=wheeldeathlink,scores={wheel_r27_d=1..}] as @a[tag=wheeldeathlink] at @s run playsound minecraft:music_disc.ward player @s ~ ~ ~
execute if entity @a[tag=wheeldeathlink,scores={wheel_r27_d=1..}] run schedule function thewheel:result/27_2 9s append
execute if entity @a[tag=wheeldeathlink,scores={wheel_r27_d=1..}] run tag @a remove wheeldeathlink

# Reset scores
scoreboard players reset @a wheel_r27_d
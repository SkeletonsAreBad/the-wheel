# Coords
execute as @e[type=minecraft:armor_stand,tag=thewheel] store result score @s wheel_x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,tag=thewheel] store result score @s wheel_y run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=thewheel] store result score @s wheel_z run data get entity @s Pos[2]

# Time Left
execute as @e[type=minecraft:armor_stand,tag=thewheel] run scoreboard players operation @s wheel_timeleftc = @s wheel_cooldown
execute as @e[type=minecraft:armor_stand,tag=thewheel] run scoreboard players operation @s wheel_timeleftc /= $1200 wheel_timeleftc
execute as @e[type=minecraft:armor_stand,tag=thewheel] run scoreboard players operation @s wheel_timeleft = $30 wheel_timeleft
execute as @e[type=minecraft:armor_stand,tag=thewheel] run scoreboard players operation @s wheel_timeleft -= @s wheel_timeleftc

# Message
tellraw @a[scores={thewheel=1..}] [" ",{"text":"\n\u300c","bold":true,"color":"dark_red"},{"text":"WHEEL STATUS","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] run tellraw @a[scores={thewheel=1..}] ["",{"text":"["},{"score":{"name":"@s","objective":"wheel_x"}},{"text":" "},{"score":{"name":"@s","objective":"wheel_y"}},{"text":" "},{"score":{"name":"@s","objective":"wheel_z"}},{"text":"]"},{"text":" Ready","color":"green"}]
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=1..}] at @s run tellraw @a[scores={thewheel=1..}] ["",{"text":"["},{"score":{"name":"@s","objective":"wheel_x"}},{"text":" "},{"score":{"name":"@s","objective":"wheel_y"}},{"text":" "},{"score":{"name":"@s","objective":"wheel_z"}},{"text":"]"},{"text":" Spinning","color":"yellow"},{"text":" - "},{"selector":"@p[tag=wheeltarget]","color":"dark_red"}]
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=1..}] run tellraw @a[scores={thewheel=1..}] ["",{"text":"["},{"score":{"name":"@s","objective":"wheel_x"}},{"text":" "},{"score":{"name":"@s","objective":"wheel_y"}},{"text":" "},{"score":{"name":"@s","objective":"wheel_z"}},{"text":"]"},{"text":" Please wait","color":"red"},{"text":" - "},{"score":{"name":"@s","objective":"wheel_timeleft"}},{"text":" minutes remaining"}]
tellraw @a[scores={thewheel=1..}] ""

# Trigger
scoreboard players enable @a thewheel
scoreboard players reset @a[scores={thewheel=1..}] thewheel
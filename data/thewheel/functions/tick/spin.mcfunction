# Scores
execute as @a[tag=wheelradius] store result score @s wheel_xp run data get entity @s XpLevel
scoreboard players add @e[type=minecraft:armor_stand,tag=thewheel] wheel_cooldown 0
scoreboard players add @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_cooldown=1..}] wheel_cooldown 1
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_cooldown=36000..}] run tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"text":"Cooldown finished, reactivating THE WHEEL","color":"red"}]
scoreboard players set @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_cooldown=36000..}] wheel_cooldown 0
scoreboard players add @e[type=minecraft:armor_stand,tag=thewheel] wheel_anim 0
scoreboard players add @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=1..16}] wheel_anim 1
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=1..16}] run data merge entity @s {CustomName:'[{"text":"SPINNING...","color":"red","bold":true}]'}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] run data merge entity @s {CustomName:'[{"text":"「","color":"dark_red","bold":true},{"text":"THE WHEEL","color":"red","bold":true},{"text":"」","color":"dark_red","bold":true}]'}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=1..}] run data merge entity @s {CustomName:'[{"text":"PLEASE WAIT...","color":"red","bold":true}]'}

# Frame 8
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=15..16}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=15..16}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel9"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=15..16}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=15}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run setblock ~ ~ ~ minecraft:stone_button[face=floor,powered=false]
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~6 ~0.5 ~-2 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16755200],FadeColors:[I;16777045]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~6 ~0.5 ~2 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;43520],FadeColors:[I;5635925]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~2 ~0.5 ~6 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;43520],FadeColors:[I;5635925]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~-2 ~0.5 ~6 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;11141120],FadeColors:[I;16733525]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~-6 ~0.5 ~-2 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;170],FadeColors:[I;5592575]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~-6 ~0.5 ~2 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;11141120],FadeColors:[I;16733525]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~-2 ~0.5 ~-6 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;170],FadeColors:[I;5592575]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run summon minecraft:firework_rocket ~2 ~0.5 ~-6 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16755200],FadeColors:[I;16777045]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max at @s run function thewheel:calculate/rngres
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max run scoreboard players set @s wheel_cooldown 1
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] unless score @s wheel_loop < @s wheel_loop_max run scoreboard players set @s wheel_anim 0
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] if score @s wheel_loop < @s wheel_loop_max run scoreboard players add @s wheel_loop 1
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=17}] if score @s wheel_loop < @s wheel_loop_max run scoreboard players set @s wheel_anim 1

# Frame 7
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=13..14}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=13..14}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel8"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=13..14}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=13}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9

# Frame 6
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=11..12}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=11..12}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel7"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=11..12}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=11}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9

# Frame 5
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=9..10}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=9..10}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel6"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=9..10}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=9}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9

# Frame 4
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=7..8}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=7..8}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel5"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=7..8}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=7}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9

# Frame 3
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=5..6}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=5..6}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel4"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=5..6}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=5}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9

# Frame 2
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=3..4}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=3..4}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel3"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=3..4}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=3}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9

# Frame 1
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=1..2}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=1..2}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel2"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=1..2}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=1}] at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.5 0.9

# Detect button
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if score @p wheel_xp <= $30 wheel_xp run tellraw @p ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"text":"The spin cost is ","color":"red"},{"text":"30 LEVELS","color":"dark_red"}]
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if score @p wheel_xp >= $30 wheel_xp run tag @p add wheeltarget
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if entity @p[tag=wheeltarget] run function thewheel:calculate/rngloop
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if entity @p[tag=wheeltarget] run scoreboard players add @p[tag=wheeltarget] wheel_counter 1
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if entity @p[tag=wheeltarget] run xp add @p[tag=wheeltarget] -30 levels
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if entity @p[tag=wheeltarget] run tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@p[tag=wheeltarget]","color":"dark_red"},{"text":" (","color":"red"},{"score":{"name":"@p[tag=wheeltarget]","objective":"wheel_counter"},"color":"dark_red"},{"text":") is spinning THE WHEEL","color":"red"}]
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if entity @p[tag=wheeltarget] run scoreboard players set @s wheel_loop 0
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0,wheel_cooldown=0}] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] if entity @p[tag=wheeltarget] run scoreboard players set @s wheel_anim 1

# Frame 0
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0}] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0}] at @s run data merge block ~ ~-3 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel1"}
execute as @e[type=minecraft:armor_stand,tag=thewheel,scores={wheel_anim=0}] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
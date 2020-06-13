execute at @s run tag @e[type=armor_stand,tag=thewheel,distance=..10] add wheelremove
execute as @e[tag=wheelremove] at @s run setblock ~ ~-3 ~ minecraft:structure_block
execute as @e[tag=wheelremove] at @s run data merge block ~ ~-3 ~ {posX:-7,mode:"LOAD",posY:0,posZ:-7,name:"thewheel:remove"}
execute as @e[tag=wheelremove] at @s run setblock ~ ~-2 ~ minecraft:redstone_block
kill @e[tag=wheelremove]
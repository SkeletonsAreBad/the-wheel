setblock ~ ~-2 ~ minecraft:barrel
execute store result score @s wheel_loop_max run loot insert ~ ~-2 ~ loot thewheel:rngloop
setblock ~ ~-2 ~ minecraft:iron_block
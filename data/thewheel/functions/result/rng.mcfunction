setblock ~ ~-2 ~ minecraft:barrel
execute store result score @s wheel_rng run loot insert ~ ~-2 ~ loot thewheel:rngres
setblock ~ ~-2 ~ minecraft:iron_block

execute if score @s wheel_rng matches 1 as @p[tag=wheeltarget] run function thewheel:result/1
execute if score @s wheel_rng matches 2 as @p[tag=wheeltarget] run function thewheel:result/2
execute if score @s wheel_rng matches 3 as @p[tag=wheeltarget] run function thewheel:result/3
execute if score @s wheel_rng matches 4 as @p[tag=wheeltarget] run function thewheel:result/4
execute if score @s wheel_rng matches 5 as @p[tag=wheeltarget] run function thewheel:result/5
execute if score @s wheel_rng matches 6 as @p[tag=wheeltarget] run function thewheel:result/6
execute if score @s wheel_rng matches 7 as @p[tag=wheeltarget] run function thewheel:result/7
execute if score @s wheel_rng matches 8 as @p[tag=wheeltarget] run function thewheel:result/8
execute if score @s wheel_rng matches 9 as @p[tag=wheeltarget] run function thewheel:result/9
execute if score @s wheel_rng matches 10 as @p[tag=wheeltarget] run function thewheel:result/10
execute if score @s wheel_rng matches 11 as @p[tag=wheeltarget] run function thewheel:result/11
execute if score @s wheel_rng matches 12 as @p[tag=wheeltarget] run function thewheel:result/12
execute if score @s wheel_rng matches 13 as @p[tag=wheeltarget] run function thewheel:result/13
execute if score @s wheel_rng matches 14 as @p[tag=wheeltarget] run function thewheel:result/14
execute if score @s wheel_rng matches 15 as @p[tag=wheeltarget] run function thewheel:result/15
execute if score @s wheel_rng matches 16 as @p[tag=wheeltarget] run function thewheel:result/16
execute if score @s wheel_rng matches 17 as @p[tag=wheeltarget] run function thewheel:result/17
execute if score @s wheel_rng matches 18 as @p[tag=wheeltarget] run function thewheel:result/18
execute if score @s wheel_rng matches 19 as @p[tag=wheeltarget] run function thewheel:result/19
execute if score @s wheel_rng matches 20 as @p[tag=wheeltarget] run function thewheel:result/20
execute if score @s wheel_rng matches 21 as @p[tag=wheeltarget] run function thewheel:result/21
execute if score @s wheel_rng matches 22 as @p[tag=wheeltarget] run function thewheel:result/22
execute if score @s wheel_rng matches 23 as @p[tag=wheeltarget] run function thewheel:result/23
execute if score @s wheel_rng matches 24 as @p[tag=wheeltarget] run function thewheel:result/24
execute if score @s wheel_rng matches 25 as @p[tag=wheeltarget] run function thewheel:result/25
execute if score @s wheel_rng matches 26 as @p[tag=wheeltarget] run function thewheel:result/26
execute if score @s wheel_rng matches 27 as @p[tag=wheeltarget] run function thewheel:result/27
execute if score @s wheel_rng matches 28 as @p[tag=wheeltarget] run function thewheel:result/28
execute if score @s wheel_rng matches 29 as @p[tag=wheeltarget] run function thewheel:result/29

tag @p[tag=wheeltarget] remove wheeltarget
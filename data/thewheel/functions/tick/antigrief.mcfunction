# Tag nearby players
execute as @a[tag=wheelradius] unless entity @e[type=minecraft:armor_stand,tag=thewheel,distance=..13] run tag @s remove wheelradius
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s run tag @a[distance=..13] add wheelradius

# Update gamemodes
gamemode adventure @a[tag=wheelradius,gamemode=survival]
gamemode survival @a[tag=!wheelradius,gamemode=adventure]

# Remove dangerous entities
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s as @e[type=minecraft:creeper,distance=..15] at @s run tp ^ ^1 ^-4
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s run kill @e[type=minecraft:tnt,distance=..15]
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s run kill @e[type=minecraft:tnt_minecart,distance=..15]
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s run kill @e[type=minecraft:wither_skull,distance=..15]
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s run kill @e[type=minecraft:fireball,distance=..15]
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s run kill @e[type=minecraft:small_fireball,distance=..15]
execute as @e[type=minecraft:armor_stand,tag=thewheel] at @s run kill @e[type=minecraft:dragon_fireball,distance=..15]
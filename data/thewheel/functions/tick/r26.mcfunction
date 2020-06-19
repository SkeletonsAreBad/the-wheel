execute as @a[tag=wheelbounty] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.2 0 1

execute as @a[scores={wheel_r26_k=1..}] at @s if entity @a[tag=wheelbounty,scores={wheel_r26_d=1..}] run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" claimed the bounty on ","color":"red"},{"selector":"@p[tag=wheelbounty,scores={wheel_r26_d=1..}]","color":"dark_red"}]
execute as @a[scores={wheel_r26_k=1..}] at @s if entity @a[tag=wheelbounty,scores={wheel_r26_d=1..}] run xp add @s 50 levels
execute as @a[scores={wheel_r26_k=1..}] at @s if entity @a[tag=wheelbounty,scores={wheel_r26_d=1..}] run give @s minecraft:diamond_block 2

# Remove bounty
execute as @a[tag=wheelbounty,scores={wheel_r26_d=1..}] if entity @a[scores={wheel_r26_k=1..}] run tag @s remove wheelbounty

# Reset scores
scoreboard players reset @a wheel_r26_d
scoreboard players reset @a wheel_r26_k
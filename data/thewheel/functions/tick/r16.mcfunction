scoreboard players add @a wheel_r16 0
scoreboard players add @a[scores={wheel_r16=1..}] wheel_r16 1
scoreboard players set @a[scores={wheel_r16=2381..}] wheel_r16 0

scoreboard players reset @a[scores={wheel_r16=0}] wheel_r16_j
scoreboard players reset @a[scores={wheel_r16=0}] wheel_r16_w

effect give @a[scores={wheel_r16=1..,wheel_r16_j=1..}] minecraft:instant_damage 1 200 true
effect clear @a[scores={wheel_r16=1..,wheel_r16_j=1..}] minecraft:slowness
scoreboard players set @a[scores={wheel_r16=1..,wheel_r16_j=1..}] wheel_r16 0
effect give @a[scores={wheel_r16=1..,wheel_r16_w=1..}] minecraft:instant_damage 1 200 true
effect clear @a[scores={wheel_r16=1..,wheel_r16_w=1..}] minecraft:slowness
scoreboard players set @a[scores={wheel_r16=1..,wheel_r16_w=1..}] wheel_r16 0
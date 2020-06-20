# Announce
title @a times 20 100 20
title @a subtitle ["",{"text":"It's raining villagers","color":"red"}]
title @a title [" ",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"text":"It's raining villagers","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
execute as @a at @s run summon minecraft:villager ~1 ~100 ~2
execute as @a at @s run summon minecraft:villager ~ ~120 ~2
execute as @a at @s run summon minecraft:villager ~1 ~90 ~-2
execute as @a at @s run summon minecraft:villager ~ ~110 ~1
execute as @a at @s run summon minecraft:villager ~-2 ~112 ~
execute as @a at @s run summon minecraft:villager ~ ~102 ~
execute as @a at @s run summon minecraft:villager ~-1 ~98 ~-1
execute as @a at @s run summon minecraft:villager ~ ~200 ~
execute as @a at @s run summon minecraft:villager ~2 ~115 ~2
execute as @a at @s run summon minecraft:villager ~-2 ~124 ~1
execute as @a at @s run summon minecraft:villager ~-1 ~89 ~2
execute as @a at @s run summon minecraft:villager ~ ~107 ~-2
execute as @a at @s run summon minecraft:villager ~1 ~106 ~
execute as @a at @s run summon minecraft:villager ~2 ~111 ~
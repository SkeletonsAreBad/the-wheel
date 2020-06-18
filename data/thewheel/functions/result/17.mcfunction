# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" was jailed","color":"red"}]
title @a title ["",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" was jailed","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
fill ~-1 ~30 ~-1 ~1 ~33 ~1 minecraft:glass
fill ~ ~31 ~ ~ ~32 ~ minecraft:air
effect give @s minecraft:mining_fatigue 120 200
effect give @s minecraft:glowing 120 200
tp @s ~ ~31 ~
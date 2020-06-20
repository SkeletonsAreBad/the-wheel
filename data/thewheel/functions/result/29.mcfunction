# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" was damned","color":"red"}]
title @a title [" ",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" was damned","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
execute at @s in minecraft:the_nether run tp @s ~ ~ ~
execute in minecraft:the_nether run spreadplayers 0 0 1000 10000 under 127 false SkeletonsAreBad
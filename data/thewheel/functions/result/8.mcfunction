# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" has been blessed by THE WHEEL","color":"red"}]
title @a title ["",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" has been blessed by THE WHEEL","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
give @s minecraft:enchanted_golden_apple 1
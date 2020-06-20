# Safety TP
execute at @s run tp ~ ~4 ~

# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" deployed THE WHEEL","color":"red"}]
title @a title [" ",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" deployed THE WHEEL","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Deploy
execute at @s run setblock ~ ~-4 ~ minecraft:structure_block
execute at @s run data merge block ~ ~-4 ~ {posX: -7, mode: "LOAD", posY: 0, posZ: -7, name: "thewheel:wheel1"}
execute at @s run setblock ~ ~-3 ~ minecraft:redstone_block
execute at @s align xyz run summon minecraft:armor_stand ~0.5 ~-1 ~0.5 {CustomNameVisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["thewheel"],CustomName:'[{"text":"「","color":"dark_red","bold":true},{"text":"THE WHEEL","color":"red","bold":true},{"text":"」","color":"dark_red","bold":true}]'}

# Setup objectives
function thewheel:setup/objectives
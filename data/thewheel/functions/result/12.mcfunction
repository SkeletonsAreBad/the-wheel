# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" has a nice new hat","color":"red"}]
title @a title [" ",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" has a nice new hat","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
execute as @s at @s if data entity @s Inventory[{Slot:103b}] run summon minecraft:item ~ ~ ~ {Tags:["wheelitem"],Item:{id:"minecraft:acacia_boat",Count:1b}}
execute as @s at @s if data entity @s Inventory[{Slot:103b}] run data modify entity @e[type=minecraft:item,tag=wheelitem,distance=..2,limit=1] Item merge from entity @s Inventory[{Slot:103b}]
execute as @s run replaceitem entity @s armor.head minecraft:carved_pumpkin{display:{Name:'[{"text":"「","color":"dark_red","bold":true,"italic":false},{"text":"THE HAT","color":"red","bold":true,"italic":false},{"text":"」","color":"dark_red","bold":true,"italic":false}]'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
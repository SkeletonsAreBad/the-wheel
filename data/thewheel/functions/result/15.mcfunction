# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" was blessed by THE WHEEL","color":"red"}]
title @a title [" ",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" was blessed by THE WHEEL","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
give @s minecraft:fishing_rod{display:{Name:'[{"text":"「","color":"dark_red","bold":true,"italic":false},{"text":"THE ROD","color":"red","bold":true,"italic":false},{"text":"」","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"A blessing from THE WHEEL","color":"white","italic":false}']},Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:3s},{id:"minecraft:lure",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]} 1
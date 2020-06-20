# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" found a coin","color":"red"}]
title @a title [" ",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" found a coin","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
give @s minecraft:gold_nugget{display:{Name:'[{"text":"「","color":"dark_red","bold":true,"italic":false},{"text":"WHEELCOIN","color":"red","bold":true,"italic":false},{"text":"」","color":"dark_red","bold":true,"italic":false}]',Lore:['[{"text":"© THE WHEEL CONSORTIUM ","color":"gray","italic":false},{"text":"2024","color":"gray","italic":false,"obfuscated":true}]']},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
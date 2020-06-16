# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" has been gifted on Steam","color":"red"}]
title @a title ["",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" has been gifted on Steam","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
# give @s minecraft:chest{display:{Name:'{"text":"A gift :)"}'},BlockEntityTag:{LootTable:"strongtools:gift1"}} 1
give @s minecraft:gold_nugget{display:{Name:'[{"text":"「","color":"dark_red","bold":true,"italic":false},{"text":"WHEELCOIN","color":"red","bold":true,"italic":false},{"text":"」","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"An authorized WHEELCOIN.","color":"white","italic":false}','{"text":"Valid until January 27 2027","color":"white","italic":false}','{"text":"--------------------------","color":"dark_gray","italic":false}','[{"text":"© THE WHEEL CONSORTIUM ","color":"gray","italic":false},{"text":"2024","color":"gray","italic":false,"obfuscated":true}]']},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
# Announce
title @a times 20 100 20
title @a subtitle ["",{"selector":"@s","color":"dark_red"},{"text":" got new clothes","color":"red"}]
title @a title [" ",{"text":"\u300c","bold":true,"color":"dark_red"},{"text":"THE WHEEL","bold":true,"color":"red"},{"text":"\u300d","bold":true,"color":"dark_red"}]
tellraw @a ["",{"text":"\u300cTHE WHEEL\u300d ","bold":true},{"selector":"@s","color":"dark_red"},{"text":" got new clothes","color":"red"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @a

# Run
# Leather
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:leather_helmet"}] run replaceitem entity @s armor.head minecraft:leather_helmet{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:leather_chestplate"}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:leather_leggings"}] run replaceitem entity @s armor.legs minecraft:leather_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:leather_boots"}] run replaceitem entity @s armor.feet minecraft:leather_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

# Netherite
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:netherite_helmet"}] run replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:'{"text":"Netherite Helmet","color":"reset","italic":false}',color:6051164}} 1
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:netherite_chestplate"}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Netherite Chestplate","color":"reset","italic":false}',color:6051164}} 1
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:netherite_leggings"}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Netherite Leggings","color":"reset","italic":false}',color:6051164}} 1
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:netherite_boots"}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:'{"text":"Netherite Boots","color":"reset","italic":false}',color:6051164}} 1

# Diamond
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:diamond_helmet"}] run replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:'{"text":"Diamond Helmet","color":"reset","italic":false}',color:4910553}} 1
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:diamond_chestplate"}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Diamond Chestplate","color":"reset","italic":false}',color:4910553}} 1
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:diamond_leggings"}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Diamond Leggings","color":"reset","italic":false}',color:4910553}} 1
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:diamond_boots"}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:'{"text":"Diamond Boots","color":"reset","italic":false}',color:4910553}} 1

# Iron
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:iron_helmet"}] run replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:'{"text":"Iron Helmet","color":"reset","italic":false}',color:13027014}} 1
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:iron_chestplate"}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Iron Chestplate","color":"reset","italic":false}',color:13027014}} 1
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:iron_leggings"}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Iron Leggings","color":"reset","italic":false}',color:13027014}} 1
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:iron_boots"}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:'{"text":"Iron Boots","color":"reset","italic":false}',color:13027014}} 1

# Chainmail
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:chainmail_helmet"}] run replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:'{"text":"Chainmail Helmet","color":"reset","italic":false}',color:6842472}} 1
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:chainmail_chestplate"}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Chainmail Chestplate","color":"reset","italic":false}',color:6842472}} 1
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:chainmail_leggings"}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Chainmail Leggings","color":"reset","italic":false}',color:6842472}} 1
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:chainmail_boots"}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:'{"text":"Chainmail Boots","color":"reset","italic":false}',color:6842472}} 1

# Gold
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:golden_helmet"}] run replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:'{"text":"Golden Helmet","color":"reset","italic":false}',color:15462230}} 1
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:golden_chestplate"}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Golden Chestplate","color":"reset","italic":false}',color:15462230}} 1
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:golden_leggings"}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Golden Leggings","color":"reset","italic":false}',color:15462230}} 1
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:golden_boots"}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:'{"text":"Golden Boots","color":"reset","italic":false}',color:15462230}} 1

# None
execute at @s unless data entity @s Inventory[{Slot:103b,id:"minecraft:leather_helmet"}] run replaceitem entity @s armor.head minecraft:leather_helmet{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s unless data entity @s Inventory[{Slot:102b,id:"minecraft:leather_chestplate"}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s unless data entity @s Inventory[{Slot:101b,id:"minecraft:leather_leggings"}] run replaceitem entity @s armor.legs minecraft:leather_leggings{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s unless data entity @s Inventory[{Slot:100b,id:"minecraft:leather_boots"}] run replaceitem entity @s armor.feet minecraft:leather_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
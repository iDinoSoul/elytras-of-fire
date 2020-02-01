#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Give Armour
execute if entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:103b,tag:{mudarmor:1}}]}] run replaceitem entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:103b,tag:{mudarmor:1}}]}] armor.head minecraft:leather_helmet{display:{Name:"{\"text\":\"§6MudWing Scales\"}",color:10378552},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"MudWing Scales",Slot:"head",Amount:4,Operation:0,UUIDMost:66736,UUIDLeast:119463},{AttributeName:"generic.armorToughness",Name:"MudWing Scales",Slot:"head",Amount:3,Operation:0,UUIDMost:28009,UUIDLeast:106195}],mudarmor:1} 1
execute if entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:102b,tag:{mudarmor:1}}]}] run replaceitem entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:102b,tag:{mudarmor:1}}]}] armor.chest minecraft:leather_chestplate{display:{Name:"{\"text\":\"§6MudWing Scales\"}",color:10378552},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"MudWing Scales",Slot:"chest",Amount:7,Operation:0,UUIDMost:49092,UUIDLeast:136128},{AttributeName:"generic.armorToughness",Name:"MudWing Scales",Slot:"chest",Amount:3,Operation:0,UUIDMost:26821,UUIDLeast:166005}],mudarmor:1} 1
execute if entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:101b,tag:{mudarmor:1}}]}] run replaceitem entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:101b,tag:{mudarmor:1}}]}] armor.legs minecraft:leather_leggings{display:{Name:"{\"text\":\"§6MudWing Scales\"}",color:10378552},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"MudWing Scales",Slot:"legs",Amount:6,Operation:0,UUIDMost:67754,UUIDLeast:148592},{AttributeName:"generic.armorToughness",Name:"MudWing Scales",Slot:"legs",Amount:3,Operation:0,UUIDMost:16687,UUIDLeast:145805}],mudarmor:1} 1
execute if entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:100b,tag:{mudarmor:1}}]}] run replaceitem entity @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:100b,tag:{mudarmor:1}}]}] armor.feet minecraft:leather_boots{display:{Name:"{\"text\":\"§6MudWing Scales\"}",color:10378552},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"MudWing Scales",Slot:"feet",Amount:3,Operation:0,UUIDMost:22105,UUIDLeast:113811},{AttributeName:"generic.armorToughness",Name:"MudWing Scales",Slot:"feet",Amount:3,Operation:0,UUIDMost:25193,UUIDLeast:105106}],mudarmor:1} 1

#Take Armour
clear @e[type=player,team=!MudWings,nbt={Inventory:[{tag:{mudarmor:1}}]}] #ids-wings-of-fire:leather-armour{mudarmor:1}
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check for Armours
execute if entity @s[team=IceWings,nbt=!{Inventory:[{tag:{icearmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/icewing-scales
execute if entity @s[team=MudWings,nbt=!{Inventory:[{tag:{mudarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/mudwing-scales
execute if entity @s[team=NightWings,nbt=!{Inventory:[{tag:{nightarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/nightwing-scales
execute if entity @s[team=RainWings,nbt=!{Inventory:[{tag:{rainarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/rainwing-scales
execute if entity @s[team=SandWings,nbt=!{Inventory:[{tag:{sandarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/sandwing-scales
execute if entity @s[team=SeaWings,nbt=!{Inventory:[{tag:{seaarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/seawing-scales
execute if entity @s[team=SkyWings,nbt=!{Inventory:[{tag:{skyarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/skywing-scales
function ids-wings-of-fire:launch-add-ons/apply-armours/apply-elytra
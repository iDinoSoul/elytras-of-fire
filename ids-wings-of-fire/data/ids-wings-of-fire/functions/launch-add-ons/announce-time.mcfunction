#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Announce Sunrise
execute if entity @e[type=player,team=NightWings,predicate=ids-wings-of-fire:check-sunrise] run tellraw @e[type=player,team=NightWings,predicate=ids-wings-of-fire:check-sunrise] [{"text":"You feel the shadows retreat from your control...","color":"dark_gray","bold":true}]

#Announce Sunset
execute if entity @e[type=player,team=NightWings,predicate=ids-wings-of-fire:check-sunset] run tellraw @e[type=player,team=NightWings,predicate=ids-wings-of-fire:check-sunrise] [{"text":"You feel the cool embrace of night swiften you...","color":"dark_gray","bold":true}]
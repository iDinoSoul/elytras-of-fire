#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Runs Help
scoreboard players enable @a help
execute if entity @a[scores={help=1..}] run tellraw @a[scores={help=1..}] [["",{"text":"- ","color":"dark_gray","bold":true},{"text":"Help ","color":"yellow","bold":true},{"text":"-\n","color":"dark_gray","bold":true},{"text":"Hover over each section to view the help!\n\n","color":"gray","bold":false},{"text":"- ","color":"dark_gray"},{"text":"Joining Tribes","color":"gold","clickEvent":{"action":"suggest_command","value":"/team join "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"/team join IceWings\n"},{"text":"/team join MudWings\n","color":"gold"},{"text":"/team join NightWings\n","color":"dark_gray"},{"text":"/team join RainWings\n","color":"green"},{"text":"/team join SandWings\n","color":"yellow"},{"text":"/team join SeaWings\n","color":"dark_aqua"},{"text":"/team join SkyWings","color":"red"}]}}},{"text":"\n- ","color":"dark_gray"},{"text":"Upgrading Abilities","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger Upgrades"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"/trigger Upgrades\n"},{"text":"(Note: Hold the item you wish to upgrade\nin your main hand for this to work!)","color":"dark_gray"}]}}},{"text":"\n- ","color":"dark_gray"},{"text":"About Abilities","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Effects written in green only apply to you, the user.\n","color":"green"},{"text":"Effects written in yellow apply to you AND entities around you.\n","color":"yellow"},{"text":"Effects written in red only apply to others.","color":"red"}]}}}]
execute if entity @a[scores={help=1..}] run scoreboard players set @a[scores={help=1..}] help 0
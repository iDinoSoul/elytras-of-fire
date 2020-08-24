#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Run Datapack
	#Runs Help
scoreboard players enable @a help
execute if entity @a[scores={help=1..}] run tellraw @a[scores={help=1..}] [{"text":"\n- ","color":"dark_gray","bold":true},{"text":"Help ","color":"yellow"},{"text":"-\n"},{"text":"Hover over or click each section to view the help!\n\n","color":"gray","bold":false},{"text":"- "},{"text":"Joining Tribes","color":"gold","clickEvent":{"action":"suggest_command","value":"/team join "},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"/team join IceWings\n"},{"text":"/team join MudWings\n","color":"gold"},{"text":"/team join NightWings\n","color":"dark_gray"},{"text":"/team join RainWings\n","color":"green"},{"text":"/team join SandWings\n","color":"yellow"},{"text":"/team join SeaWings\n","color":"dark_aqua"},{"text":"/team join SkyWings","color":"red"}]}}},{"text":"\n- "},{"text":"Upgrading Abilities","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger Upgrades"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"/trigger Upgrades\n"},{"text":"(Note: Hold the item you wish to upgrade\nin your main hand for this to work!)"}]}}},{"text":"\n- "},{"text":"About Abilities","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Effects written in green only apply to you, the user.\n","color":"green"},{"text":"Effects written in yellow apply to you AND entities around you.\n","color":"yellow"},{"text":"Effects written in red only apply to others.","color":"red"}]}}},{"text":"\n- "},{"text":"Tome of the Dragons","color":"gold","clickEvent":{"action":"run_command","value":"/function ids-wings-of-fire:launch-add-ons/guide"}}]
execute if entity @a[scores={help=1..}] run scoreboard players set @a[scores={help=1..}] help 0

	#Generate Armours
execute if entity @a[tag=Pyrrhian] run function ids-wings-of-fire:loop-required/generate-armour/give-armour
execute as @a[tag=!Dragon] unless entity @s[nbt=!{Inventory:[{tag:{tribearmor:1}}]},nbt=!{Inventory:[{tag:{tribewings:1}}]}] run function ids-wings-of-fire:loop-required/generate-armour/remove-armour
execute if entity @a[team=RainWings] as @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] at @s run function ids-wings-of-fire:loop-required/generate-armour/rainwing-camo

	#Start Timer
function ids-wings-of-fire:loop-required/start-timer

	#Track XP
execute as @a[tag=Dragon] store result score @s xp run data get entity @s XpTotal

	#Enable Abilities Scoreboard
scoreboard players enable @a abilities

	#Run Tribes
execute if entity @a[team=IceWings] run function ids-wings-of-fire:loop-required/run-tribes/run-icewings
execute if entity @a[team=MudWings] run function ids-wings-of-fire:loop-required/run-tribes/run-mudwings
execute if entity @a[team=NightWings] run function ids-wings-of-fire:loop-required/run-tribes/run-nightwings
execute if entity @a[team=RainWings] run function ids-wings-of-fire:loop-required/run-tribes/run-rainwings
execute if entity @a[team=SandWings] run function ids-wings-of-fire:loop-required/run-tribes/run-sandwings
execute if entity @a[team=SeaWings] run function ids-wings-of-fire:loop-required/run-tribes/run-seawings
execute if entity @a[team=SkyWings] run function ids-wings-of-fire:loop-required/run-tribes/run-skywings

	#Tag Tribe Members
function ids-wings-of-fire:loop-required/generate-tags/team-tags
function ids-wings-of-fire:loop-required/generate-tags/ability-tags
execute at @a run function ids-wings-of-fire:loop-required/generate-tags/is-flying

	#Execute Ability Toggle
function ids-wings-of-fire:loop-required/ability-toggle

	#Discourage Ability Dispersion
execute if score t_sec timer matches 19 as @e[type=item,tag=] run function ids-wings-of-fire:loop-required/kill-abilities
execute if entity @a[tag=!Dragon] run function ids-wings-of-fire:loop-required/clear-abilities/clear-all
execute if entity @a[tag=Dragon] run function ids-wings-of-fire:loop-required/check-extras

	#Trigger Upgrade Launch
execute if entity @a[tag=Pyrrhian] run function ids-wings-of-fire:loop-required/run-upgrades

	#Generate Hotbars
execute if entity @a[tag=Pyrrhian,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-tribe-upgrades
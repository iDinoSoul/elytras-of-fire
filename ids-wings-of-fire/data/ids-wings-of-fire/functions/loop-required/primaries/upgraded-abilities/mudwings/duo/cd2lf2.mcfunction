#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Flame Breath
execute if entity @s[tag=!CoolDown1,tag=Furnace2,tag=Everburn2,tag=!Inferno1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["mud_cd2lf2","getRot"],Particle:"block air",Duration:14,Radius:1f}

#Rotate mud_cd2lf2
execute as @e[type=area_effect_cloud,tag=mud_cd2lf2,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=mud_cd2lf2,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=mud_cd2lf2] run function ids-wings-of-fire:loop-required/primaries/particles/flame-breath-parts
execute as @e[type=area_effect_cloud,tag=mud_cd2lf2] at @s run tp @s ^ ^ ^0.7

#Effect Entities
execute as @e[type=area_effect_cloud,tag=mud_cd2lf2] at @s positioned ^ ^ ^0.7 run fill ^0.5 ^0.55 ^0.35 ^-0.5 ^ ^0.1 fire[age=5] replace #ids-wings-of-fire:families/airs

#If Hit a Block or Hits Entity, kill mud_cd2lf2
execute as @e[type=area_effect_cloud,tag=mud_cd2lf2] at @s unless block ^ ^0.2 ^0.15 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=mud_cd2lf2] at @s positioned ^ ^-1.33 ^0.45 if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.75] run kill @s
execute as @e[type=area_effect_cloud,tag=mud_cd2lf2] at @s run kill @e[type=arrow,distance=..1.875]

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
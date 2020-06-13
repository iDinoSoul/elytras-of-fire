#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Frost Breath
execute if entity @s[tag=!CoolDown1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["ice_cd1","getRot"],Particle:"block air",Duration:14,Radius:1f}

#Rotate ice_cd1
execute as @e[type=area_effect_cloud,tag=ice_cd1,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=ice_cd1,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=ice_cd1] run function ids-wings-of-fire:loop-required/primaries/particles/frost-breath-parts
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s run tp @s ^ ^ ^0.7

#Place Snow
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^ ^0.7 unless block ~ ~-1 ~ #ids-wings-of-fire:families/airs if block ~ ~ ~ #ids-wings-of-fire:families/airs run setblock ~ ~ ~ snow replace
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^ ^0.7 if block ~ ~ ~ snow run summon area_effect_cloud ~ ~ ~ {Tags:["snow_aec0"],Particle:"block air",Duration:80,Radius:1f}

#Effect Entities
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^-1.33 ^0.5 run effect give @e[distance=..0.75] slowness 4 1 true
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^-1.33 ^0.5 run effect give @e[distance=..0.75] mining_fatigue 4 1 true
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^-1.33 ^0.5 run effect give @e[distance=..0.75] weakness 4 0 true
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^-1.33 ^0.5 run tag @e[distance=..0.75] add hasFrost1

#If Hit a Block or Hits Entity, kill ice_cd1
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s unless block ^ ^0.1 ^0.1 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^-1.33 ^0.45 if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.74] run kill @s

#Kill Fire
execute as @e[type=area_effect_cloud,tag=ice_cd1] at @s positioned ^ ^ ^1 if block ~ ~ ~ fire run fill ^0.75 ^0.2 ^0.75 ^-0.75 ^-0.2 ^-0.75 air replace fire
#Effect Entities
execute if entity @s[tag=!CoolDown2] run effect give @s resistance 8 1 true
execute at @s[tag=!CoolDown2] run effect give @e[distance=0.1..5] slowness 8 0 true
execute at @s[tag=!CoolDown2] run effect give @e[distance=0.1..5] weakness 8 2 true

#Enter Cooldown
tag @s add CoolDown2
execute as @s[tag=!CoolDownActive2] run function eof:launch-add-ons/announce-cooldown-two
tag @s add CoolDownActive2
#Shade Shackle Effect
execute if entity @s[nbt={SelectedItem:{tag:{shadowbind:1,ep1:1}}}] at @s run effect give @e[distance=..6] slowness 1 2 true
execute if entity @s[nbt={SelectedItem:{tag:{shadowbind:1,ep1:1}}}] at @s run effect give @e[team=!NightWings,distance=0.1..6] blindness 2 0 true
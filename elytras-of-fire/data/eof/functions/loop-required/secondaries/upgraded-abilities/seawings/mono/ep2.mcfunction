#Ocean's Blessing Effect
execute if entity @s[nbt={SelectedItem:{tag:{oceanicbless:1,ep2:1}}}] at @s if block ~ ~ ~ #eof:families/water run effect give @s speed 1 1 true
execute if entity @s[nbt={ActiveEffects:[{Id:1b}]}] at @s unless block ~ ~ ~ #eof:families/water run effect clear @s speed
# sets the value of holdingClock for each player
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:clock"}}] holdingClock 2
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] holdingClock 1
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:clock"}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] holdingClock 0

# sets the value of holdingCompass for each player
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:compass"}}] holdingCompass 2
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] holdingCompass 1
scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:compass"}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] holdingCompass 0

# displays time and coordinates/bearing as appropriate
scoreboard players set @a[scores={clockFormat=2..}] clockFormat 0
scoreboard players set @a[scores={clockFormat=..-1}] clockFormat 0
execute as @a[scores={clockFormat=1}] if score @s holdingClock > @s holdingCompass run function digital:display_time_12
execute as @a[scores={clockFormat=0}] if score @s holdingClock > @s holdingCompass run function digital:display_time_24
execute as @a if score @s holdingClock < @s holdingCompass run function digital:display_pos
# stores time of day relative to midnight
execute store result score TimeOfDay timeOfDay run time query daytime
scoreboard players add TimeOfDay timeOfDay 6000
execute if score TimeOfDay timeOfDay matches 24000.. run scoreboard players remove TimeOfDay timeOfDay 24000

# stores date (number of midnights that have passed)
execute store result score TimeOfDay day run time query day
execute if score TimeOfDay timeOfDay matches 0..5999 run scoreboard players add TimeOfDay day 1

# sets hour in 24-hour format [ticksPerHour = 1000]
execute store result score TimeOfDay hour24 run scoreboard players get TimeOfDay timeOfDay
scoreboard players operation TimeOfDay hour24 /= TimeOfDay ticksPerHour

# sets hour in 12-hour format
execute if score TimeOfDay hour24 matches 0 run scoreboard players set TimeOfDay hour12 12
execute if score TimeOfDay hour24 matches 1..23 store result score TimeOfDay hour12 run scoreboard players get TimeOfDay hour24
execute if score TimeOfDay hour24 matches 13..23 run scoreboard players remove TimeOfDay hour12 12

# sets minute [ticksPerHour = 1000, minutesInHour = 60]
execute store result score TimeOfDay minute run scoreboard players get TimeOfDay timeOfDay
scoreboard players operation TimeOfDay minute %= TimeOfDay ticksPerHour
scoreboard players operation TimeOfDay minute *= TimeOfDay minutesInHour
scoreboard players operation TimeOfDay minute /= TimeOfDay ticksPerHour
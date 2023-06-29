# stores the time of day in ticks, but relative to midnight rather than 6 am
scoreboard objectives add timeOfDay dummy

# stores the clock format for each player. 0 is 24-hour time, 1 or greater represents 12-hour time.
scoreboard objectives add clockFormat trigger

# If clockFormat is negative for a particular player, the digital clock display is disabled for that player.

# stores the time as days, hours, and minutes
scoreboard objectives add hour24 dummy
scoreboard objectives add hour12 dummy
scoreboard objectives add minute dummy
scoreboard objectives add day dummy

# stores constant values
scoreboard objectives add ticksPerHour dummy
scoreboard players set TimeOfDay ticksPerHour 1000
scoreboard objectives add minutesInHour dummy
scoreboard players set TimeOfDay minutesInHour 60

# stores whether players are currently holding a clock in main hand (2), offhand (1), or not at all (0).
scoreboard objectives add holdingClock dummy

# stores x, y, and z coordinates of each player, rounded down to nearest integer
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

# stores compass bearing in degrees (0 = north, 90 = east, 180 = south, 270 = west)
scoreboard objectives add bearing dummy

# stores whether players are currently holding a compass in main hand (2), offhand (1), or not at all (0).
scoreboard objectives add holdingCompass dummy
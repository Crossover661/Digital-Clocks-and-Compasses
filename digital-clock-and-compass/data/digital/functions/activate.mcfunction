# stores the time of day in ticks: 0 = 6 am, 6000 = noon, 12000 = 6 pm, 18000 = midnight
scoreboard objectives add timeOfDay dummy

# stores the clock format for each player. 0 is 24-hour time, 1 or greater represents 12-hour time.
scoreboard objectives add clockFormat trigger

# stores the day format for each player. If set to 0, the day count represents how many midnights have passed (that is, the day number changes at midnight).
# If set to a value 1 or greater, the day count is the day on the debug screen, changing at midnight.
scoreboard objectives add dayFormat trigger

# If, for a particular player, either clockFormat or dayFormat is negative, the digital clock display is disabled for that particular player.

# stores the time as days, hours, and minutes (day represents the day on the debug screen, while dayMidnight represents the number of midnights passed)
scoreboard objectives add hour24 dummy
scoreboard objectives add hour12 dummy
scoreboard objectives add minute dummy
scoreboard objectives add day dummy
scoreboard objectives add dayMidnight dummy

# stores time of day relative to midnight, rather than 6 am
scoreboard objectives add timeShifted dummy

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
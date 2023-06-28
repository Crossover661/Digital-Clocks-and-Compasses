# Digital-Clocks-and-Compasses
Minecraft datapack which allows clocks to show in-game time in digital format, and compasses to show in-game coordinates and compass bearing.

If this datapack is enabled in a world, players holding a clock will see the in-game time and date in the actionbar, and players holding a compass will see their coordinates and compass bearing (i.e. the direction the player is facing, expressed in degrees where 0° is north, 90° is east, 180° is south, and 270° is west). Players can hold the clock or compass either in the main hand or offhand; when a player is holding both a clock and compass, the item in the main hand takes priority.

The format of the time and date shown by the clock can be adjusted for each player using the following commands:
/trigger clockFormat set 0 (shows 24-hour time)
/trigger clockFormat set 1 (shows 12-hour time)
/trigger dayFormat set 0 (date changes at midnight, like real-world dates)
/trigger dayFormat set 1 (date changes at 6 am (06:00), like the day on the debug screen or the day obtained from /time query day)

If dayFormat = 0, then the day shown by the clock will be 1 greater than the day on the debug screen when the in-game time is between midnight and 6 am (06:00). By default, clockFormat and dayFormat are both set to 0.

Clocks and compasses will show actionbar displays in all dimensions, providing a way for players in the Nether or End to see the time of day in the Overworld.

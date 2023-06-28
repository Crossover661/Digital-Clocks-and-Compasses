# Digital-Clocks-and-Compasses
Minecraft datapack which allows clocks to show in-game time in digital format, and compasses to show in-game coordinates and compass bearing.

If this datapack is enabled in a world, players holding a clock will see the in-game time and date in the actionbar, and players holding a compass will see their coordinates and compass bearing (i.e. the direction the player is facing, expressed in degrees where 0° is north, 90° is east, 180° is south, and 270° is west). Players can hold the clock or compass either in the main hand or offhand; when a player is holding both a clock and compass, the item in the main hand takes priority.

By default, clocks show 24-hour time for every player. A player can change their clocks to show 12-hour time using the command "/trigger clockFormat set 1" and revert back to 24-hour time using "/trigger clockFormat set 0". The date displayed by the clock changes at midnight, in line with real-world dates. This means that between midnight and 6 am, the date on the clock is 1 day ahead of the date displayed on the debug screen.

Clocks and compasses will show actionbar displays in all dimensions, providing a way for players in the Nether or End to see the time of day in the Overworld.

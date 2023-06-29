# stores coordinates in scoreboard 
execute as @a store result score @s x run data get entity @s Pos[0]
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @a store result score @s z run data get entity @s Pos[2]

# stores rotation in scoreboard and adjusts it to correspond with standard compass bearing
execute as @a store result score @s bearing run data get entity @s Rotation[0]
scoreboard players add @a bearing 180
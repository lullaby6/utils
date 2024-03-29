scoreboard players reset * utils.motion.x
scoreboard players reset * utils.motion.y
scoreboard players reset * utils.motion.z

scoreboard players reset * utils.motion.x2
scoreboard players reset * utils.motion.y2
scoreboard players reset * utils.motion.z2

scoreboard players reset * utils.motion.mx
scoreboard players reset * utils.motion.my
scoreboard players reset * utils.motion.mz

summon area_effect_cloud ~ ~ ~ {Duration:-1,WaitTime:-2147483648,Tags:["utils.motion.area_effect_cloud"],Age:-2147483648}

execute store result score @s utils.motion.x run data get entity @s Pos[0] 1000
execute store result score @s utils.motion.y run data get entity @s Pos[1] 1000
execute store result score @s utils.motion.z run data get entity @s Pos[2] 1000

execute at @s run tp @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest] ^ ^ ^1

execute as @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest] at @s store result score @s utils.motion.x run data get entity @s Pos[0] 1000
execute as @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest] at @s store result score @s utils.motion.y run data get entity @s Pos[1] 1000
execute as @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest] at @s store result score @s utils.motion.z run data get entity @s Pos[2] 1000

execute store result score @s utils.motion.x2 run scoreboard players get @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest] utils.motion.x
execute store result score @s utils.motion.y2 run scoreboard players get @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest] utils.motion.y
execute store result score @s utils.motion.z2 run scoreboard players get @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest] utils.motion.z

scoreboard players operation @s utils.motion.mx = @s utils.motion.x
scoreboard players operation @s utils.motion.mx -= @s utils.motion.x2
scoreboard players operation @s utils.motion.my = @s utils.motion.y
scoreboard players operation @s utils.motion.my -= @s utils.motion.y2
scoreboard players operation @s utils.motion.mz = @s utils.motion.z
scoreboard players operation @s utils.motion.mz -= @s utils.motion.z2

kill @e[tag=utils.motion.area_effect_cloud,limit=1,sort=nearest]
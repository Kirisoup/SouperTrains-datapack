execute as @e[tag=train, tag=tr-z] run execute at @s run function soupertrains:update-train-z
execute as @e[tag=train, tag=tr-x] run execute at @s run function soupertrains:update-train-x

execute as @e[tag=train, tag=tr-z-s] run execute at @s run function soupertrains:update-train-z-small
execute as @e[tag=train, tag=tr-x-s] run execute at @s run function soupertrains:update-train-x-small

execute as @e[tag=pushing1] run data modify entity @s Motion set value [0f, 0f, 0f]
execute as @e[tag=pushing2] run data modify entity @s Motion set value [0f, 0f, 0f]

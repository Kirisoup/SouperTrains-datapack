execute as @e[tag=train, tag=tr-x] run execute at @s run execute unless entity @s[tag=pushing] run function soupertrains:recover-train-x
execute as @e[tag=train, tag=tr-z] run execute at @s run execute unless entity @s[tag=pushing] run function soupertrains:recover-train-z

execute as @e[tag=train, tag=tr-x-s] run execute at @s run execute unless entity @s[tag=pushing] run function soupertrains:recover-train-x-small
execute as @e[tag=train, tag=tr-z-s] run execute at @s run execute unless entity @s[tag=pushing] run function soupertrains:recover-train-z-small

execute as @e[tag=train, tag=tr-x, tag=tr-pre-renderer-init] run execute at @s run function soupertrains:init-train-x-renderers
execute as @e[tag=train, tag=tr-z, tag=tr-pre-renderer-init] run execute at @s run function soupertrains:init-train-z-renderers

execute as @e[tag=train, tag=tr-x-s, tag=tr-pre-renderer-init] run execute at @s run function soupertrains:init-train-x-small-renderers
execute as @e[tag=train, tag=tr-z-s, tag=tr-pre-renderer-init] run execute at @s run function soupertrains:init-train-z-small-renderers

schedule function soupertrains:_schedule 1s replace
# Push detection
execute positioned ~3 ~ ~ run execute if entity @a[distance=..1.5] run tag @s add pushing_1
execute positioned ~3 ~ ~ run execute unless entity @a[distance=..1.5] run tag @s remove pushing_1

execute positioned ~-3 ~ ~ run execute if entity @a[distance=..1.5] run tag @s add pushing_2
execute positioned ~-3 ~ ~ run execute unless entity @a[distance=..1.5] run tag @s remove pushing_2

# Float detection
execute positioned ~-1.5 ~ ~ run execute if block ~ ~-0.5 ~ air run tag @s remove pushing_1
execute positioned ~1.5 ~ ~ run execute if block ~ ~-0.5 ~ air run tag @s remove pushing_2

execute if entity @s[tag=pushing_1] run tag @s add pushing
execute if entity @s[tag=pushing_2] run tag @s add pushing
execute unless entity @s[tag=pushing_1] unless entity @s[tag=pushing_2] run tag @s remove pushing

# Push Handling
execute positioned ~-2.05 ~ ~ run data modify entity @e[tag=push_2, distance=..1, limit=1] Motion set value [0f, 0f, 0f]
execute positioned ~2.05 ~ ~ run data modify entity @e[tag=push_1, distance=..1, limit=1] Motion set value [0f, 0f, 0f]

execute positioned ~-2.05 ~ ~ run execute if entity @s[tag=pushing_1] run data modify entity @e[tag=push_2, distance=..1, limit=1] Motion[0] set value -0.1d
execute positioned ~-2.05 ~ ~ run execute if entity @s[tag=pushing_1] run execute at @e[tag=push_2, distance=..1, limit=1] run tp @s ~2.05 ~ ~

execute positioned ~2.05 ~ ~ run execute if entity @s[tag=pushing_2] run data modify entity @e[tag=push_1, distance=..1, limit=1] Motion[0] set value 0.1d
execute positioned ~2.05 ~ ~ run execute if entity @s[tag=pushing_2] run execute at @e[tag=push_1, distance=..1, limit=1] run tp @s ~-2.05 ~ ~

# Sync
execute positioned ~2.05 ~ ~ run execute unless entity @s[tag=pushing_2] unless entity @e[tag=push_1, distance=0] if entity @e[tag=push_1, distance=..1] run tp @e[tag=push_1, distance=..1, limit=1] ~ ~ ~
execute positioned ~-2.05 ~ ~ run execute unless entity @s[tag=pushing_1] unless entity @e[tag=push_2, distance=0] if entity @e[tag=push_2, distance=..1] run tp @e[tag=push_2, distance=..1, limit=1] ~ ~ ~


# Colliders :O

# tr-col-b
execute positioned ~0.5 ~-0.5 ~0.5 run execute unless entity @e[tag=tr-col-1, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-1, distance=..1] run tp @e[tag=tr-col-1, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~1.5 ~-0.5 ~0.5 run execute unless entity @e[tag=tr-col-2, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-2, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-2, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~2.5 ~-0.5 ~0.5 run execute unless entity @e[tag=tr-col-3, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-3, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-3, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~

execute positioned ~0.5 ~-0.5 ~-0.5 run execute unless entity @e[tag=tr-col-4, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-4, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-4, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~1.5 ~-0.5 ~-0.5 run execute unless entity @e[tag=tr-col-5, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-5, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-5, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~2.5 ~-0.5 ~-0.5 run execute unless entity @e[tag=tr-col-6, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-6, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-6, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~

execute positioned ~-0.5 ~-0.5 ~0.5 run execute unless entity @e[tag=tr-col-7, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-7, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-7, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~-1.5 ~-0.5 ~0.5 run execute unless entity @e[tag=tr-col-8, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-8, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-8, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~-2.5 ~-0.5 ~0.5 run execute unless entity @e[tag=tr-col-9, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-9, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-9, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~

execute positioned ~-0.5 ~-0.5 ~-0.5 run execute unless entity @e[tag=tr-col-10, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-10, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-10, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~-1.5 ~-0.5 ~-0.5 run execute unless entity @e[tag=tr-col-11, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-11, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-11, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
execute positioned ~-2.5 ~-0.5 ~-0.5 run execute unless entity @e[tag=tr-col-12, tag=tr-col-b, distance=0] if entity @e[tag=tr-col-12, tag=tr-col-b, distance=..1] run tp @e[tag=tr-col-12, tag=tr-col-b, distance=..1, limit=1] ~ ~ ~
#DETECT IF THE BLOCKS BELOW AND AROUND THE BLOCK BELOW OF THE PLAYER ARE AIR
scoreboard players set @a flying 0
execute @a ~~~ detect ~ ~-1 ~ air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~ ~-2 ~ air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~-1 ~-1 ~-1 air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~1 ~-1 ~1 air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~1 ~-1 ~-1 air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~-1 ~-1 ~1 air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~-1 ~-1 ~ air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~1 ~-1 ~ air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~ ~-1 ~-1 air 0 scoreboard players add @s flying 1
execute @a ~~~ detect ~ ~-1 ~1 air 0 scoreboard players add @s flying 1

#ADD 1 TO SECONDS EVERY 20 TICKS IF THE PLAYER IS FLYING AND RESET IF PLAYER IS NOT
scoreboard players set @a[tag=!bypass,scores={flying=!10}] seconds 0
scoreboard players add @a[tag=!bypass,scores={flying=10}] seconds 1

#RUN COMMANDS
execute @a[scores={seconds=10}] ~~~ tag @s flying
execute @a[scores={seconds=10}] ~~~ tellraw @a[tag=!flying] {"rawtext":[{"text":"§c"},{"selector":"@p[tag=flying"},{"text":"§4was banned for flying"}]}
execute @a[scores={seconds=10}] ~~~ tag @s remove flying
execute @a[scores={seconds=10}] ~~~ scoreboard players add @s warn 1
execute @a[scores={seconds=10}] ~~~ kick @s §cFlying is not enabled on this server! §3Go to https://discord.gg/Q5WU6DdJU9 to appeal your ban
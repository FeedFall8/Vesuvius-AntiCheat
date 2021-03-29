#DETECTION
execute @a ~~~ detect ~ ~-1 ~ water 0 scoreboard players add jesus 1
execute @a ~~~ detect ~ ~ ~ air 0 scoreboard players add jesus 1
execute @a ~~~ detect ~ ~-2 ~ water 0 scoreboard players add jesus 1
execute @a ~~~ detect ~ ~ ~ water 0 scoreboard players add jesus 1
execute @a ~~~ detect ~ ~ ~ air 0 scoreboard players add jesus 1
execute @a ~~~ detect ~ ~-3 ~ water 0 scoreboard players add jesus 1

#FALSE BAN ACTION
scoreboard players set @a[tag=!bypass,scores={jesus=!5}] seconds 0
scoreboard players set @a[tag=!bypass, score={jesus=5..6}] seconds 1

#BAN TARGET
execute @a[scores={seconds=5}] ~~~ add banMsg
execute @a ~~~ titleraw @a {"rawtext":[{"text":"§c"},{"selector":"@a[tag=banMsg]"},{"text":" §4was banned for: §3Jesus Hacks"}]}
execute @a[tag=banMsg,scores={seconds=5}] ~~~ tag @s add ban
execute @a[tag=banMsg,scores={seconds=5}] ~~~ tag @s remove banMsg
execute @a[tag=ban,scores={seconds=5}] ~~~ kick @s §cJesus Hacks are disabled on this server, please appeal your ban at https://discord.gg/Q5WU6DdJU9
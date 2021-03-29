tag @p add Rtp
tp @p[tag=Rtp] @r[tag=!Rtp]
tellraw @p {"rawtext":[{"text":"success!"}]}
tag @p remove Rtp
playsound random.level_up @p ~~~ 1 1
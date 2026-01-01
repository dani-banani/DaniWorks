tag @s remove dani.input.jump.pressed
tag @s remove dani.input.sneak.pressed
tag @s remove dani.input.leftclick.pressed
tag @s remove dani.input.rightclick.pressed

execute if predicate dani:player/input/sneak run function dani:pack/player/input/sneak/now
execute if predicate dani:player/input/jump run function dani:pack/player/input/jump/now

execute if items entity @s[tag=!dani.input.click.reader.mainhand] weapon.mainhand *[minecraft:custom_data~{dani:clickApiStart}] unless items entity @s weapon.offhand *[minecraft:custom_data~{hand:off}] run function dani:pack/player/input/click/mainhand/start
execute if items entity @s[tag=!dani.input.click.reader.offhand] weapon.offhand *[minecraft:custom_data~{dani:clickApiStart}] unless items entity @s weapon.offhand *[minecraft:custom_data~{hand:main}] run function dani:pack/player/input/click/offhand/start
# target, value
summon minecraft:armor_stand ~ ~ ~ {UUID: [0,0,0,0], Invisible: 1b, Marker: 1b}
item replace entity 00000000-0000-0000-0000-000000000000 weapon.mainhand from entity @s weapon.mainhand
$data modify entity 00000000-0000-0000-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".$(target) set value $(value)
item replace entity @s weapon.mainhand from entity 00000000-0000-0000-0000-000000000000 weapon.mainhand
kill 00000000-0000-0000-0000-000000000000
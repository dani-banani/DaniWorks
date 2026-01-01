# target, value
summon minecraft:armor_stand ~ ~ ~ {UUID: [0,0,0,0], Invisible: 1b, Marker: 1b}
item replace entity 00000000-0000-0000-0000-000000000000 weapon.offhand from entity @s weapon.offhand
$data modify entity 00000000-0000-0000-0000-000000000000 equipment.offhand.components."minecraft:custom_data".$(target) set value $(value)
item replace entity @s weapon.offhand from entity 00000000-0000-0000-0000-000000000000 weapon.offhand
kill 00000000-0000-0000-0000-000000000000
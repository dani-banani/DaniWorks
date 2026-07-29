scoreboard players remove count dani.Global 1
$summon item ~$(x_offset) ~$(y_offset) ~$(z_offset) {Tags:["dani.custom_particle"],NoGravity:$(NoGravity),CustomNameVisible:1b,Age:$(time),PickupDelay:32767,Invulnerable:$(Invulnerable),Motion:[$(motionX),$(motionY),$(motionZ)],CustomName:$(text),Item:{id:"minecraft:bow",count:1,components:{"minecraft:item_model":"air"}}}

$execute store result score timeMinus dani.Global run random value $(TimeMin)..$(TimeMax)
scoreboard players set time dani.Global 6000
scoreboard players operation time dani.Global -= timeMinus dani.Global
execute store result storage dani:api/custom_particle data.time int 1 run scoreboard players get time dani.Global

$execute store result storage dani:api/custom_particle data.x_offset float 0.001 run random value -$(deltax)..$(deltax)
$execute store result storage dani:api/custom_particle data.y_offset float 0.001 run random value -$(deltay)..$(deltay)
$execute store result storage dani:api/custom_particle data.z_offset float 0.001 run random value -$(deltaz)..$(deltaz)
$execute store result storage dani:api/custom_particle data.motionX float 0.001 run random value $(MotionXMin)..$(MotionXMax)
$execute store result storage dani:api/custom_particle data.motionY float 0.001 run random value $(MotionYMin)..$(MotionYMax)
$execute store result storage dani:api/custom_particle data.motionZ float 0.001 run random value $(MotionZMin)..$(MotionZMax)
execute if score count dani.Global matches 1.. run function dani:api/custom_particle_item/count_summon with storage dani:api/custom_particle data 

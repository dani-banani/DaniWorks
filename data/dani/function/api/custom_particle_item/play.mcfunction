# function dani:api/custom_particle_item/play {text:{"bold":false,"color":"white","italic":false,"text":"●"},NoGravity:1b,TimeMin:15,TimeMax:20,Invulnerable:1b,MotionXMin:0.0,MotionYMin:25,MotionZMin:0.0,MotionXMax:0.0,MotionYMax:350,MotionZMax:0.0,deltax:500,deltay:750,deltaz:500,count:25}

data remove storage dani:api/custom_particle data
$data modify storage dani:api/custom_particle data set value {text:$(text),NoGravity:$(NoGravity),Invulnerable:$(Invulnerable),deltax:$(deltax),deltay:$(deltay),deltaz:$(deltaz),MotionXMin:$(MotionXMin),MotionYMin:$(MotionYMin),MotionZMin:$(MotionZMin),MotionXMax:$(MotionXMax),MotionYMax:$(MotionYMax),MotionZMax:$(MotionZMax),TimeMin:$(TimeMin),TimeMax:$(TimeMax)}

$execute store result score timeMinus dani.Global run random value $(TimeMin)..$(TimeMax)
scoreboard players set time dani.Global 6000
scoreboard players operation time dani.Global -= timeMinus dani.Global
execute store result storage dani:api/custom_particle data.time int 1 run scoreboard players get time dani.Global

$scoreboard players set count dani.Global $(count)
$execute store result storage dani:api/custom_particle data.x_offset float 0.001 run random value -$(deltax)..$(deltax)
$execute store result storage dani:api/custom_particle data.y_offset float 0.001 run random value -$(deltay)..$(deltay)
$execute store result storage dani:api/custom_particle data.z_offset float 0.001 run random value -$(deltaz)..$(deltaz)
$execute store result storage dani:api/custom_particle data.motionX float 0.001 run random value $(MotionXMin)..$(MotionXMax)
$execute store result storage dani:api/custom_particle data.motionY float 0.001 run random value $(MotionYMin)..$(MotionYMax)
$execute store result storage dani:api/custom_particle data.motionZ float 0.001 run random value $(MotionZMin)..$(MotionZMax)
execute if score count dani.Global matches 1.. run function dani:api/custom_particle_item/count_summon with storage dani:api/custom_particle data

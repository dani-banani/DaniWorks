$scoreboard players operation #temp dani.Global = $(from) $(fromOrigin)
scoreboard players operation #temp dani.Global *= $const.120 dani.Global
scoreboard players operation #temp dani.Global /= $const.100 dani.Global
$scoreboard players operation $(to) $(toOrigin) = #temp dani.Global 
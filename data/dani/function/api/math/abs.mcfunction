# score: player:

$execute if score $(player) $(score) matches ..-1 run scoreboard players operation $(player) $(score) *= $const.-1 dani.Global

scoreboard players reset #success dani.Global
execute store success score #success dani.Global run gamerule send_command_feedback false
execute if score #success dani.Global matches 1 run schedule function dani:pack/gamerule/send_command_feedback_true 1t
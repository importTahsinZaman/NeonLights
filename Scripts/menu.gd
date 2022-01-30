extends Node2D

func _ready():
	$HighScoreLabel.text = str(Global.high_score)

func _on_PlayButton_pressed():
	if Global.player_name == "":
		get_tree().change_scene("res://Scenes/GetNameScreen.tscn")
	else:
		get_tree().change_scene("res://Scenes/world.tscn")


func _on_LeaderboardButton_pressed():
	get_tree().change_scene("res://addons/silent_wolf/Scores/Leaderboard.tscn")

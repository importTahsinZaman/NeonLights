extends Node2D

var score_file = "user://score.save"

func _ready():
	if Global.score > Global.high_score:
		var file = File.new()
		file.open(score_file, File.WRITE)
		file.store_var(Global.score)
		file.close()
		Global.high_score = Global.score
	$ScoreLabel.text = "Score:\n" + str(Global.score)
	$HighScoreLabel.text = "HighScore:\n" + str(Global.high_score)

func _on_PlayButton_pressed():
	Global.score = 0
	Global.player_hits = 0
	get_tree().change_scene("res://Scenes/world.tscn")


func _on_MenuButton_pressed():
	Global.score = 0
	Global.player_hits = 0
	get_tree().change_scene("res://Scenes/menu.tscn")

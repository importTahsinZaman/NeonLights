extends Node

var score_file = "user://score.save"
var player_name_file = "user://player_name.save"

var score = 0
var high_score = 0
var player_name = ""

var player_hits = 0

#####-Balance_Stats-######
var min_proj_speed = 5          #Default: 12
var max_proj_speed = 15         #Default: 25
var spawntimer_min = 0.1        #Default: 0.1
var spawntimer_max = 0.4        #Default: 0.5
var player_speed = 6            #Default: 5
var player_health = 4           #Default: 4
var proj_accel = 1.2            #Default: 1.1
#####-Balance_Stats-######

func _ready():
	var file = File.new()
	if file.file_exists(player_name_file):
		file.open(player_name_file, File.READ)
		player_name = file.get_var()
		file.close()
		print(player_name)
	
	if file.file_exists(score_file):
		file.open(score_file, File.READ)
		high_score = file.get_var()
		file.close()
	else:
		file.open(score_file, File.WRITE)
		file.store_var(0)
		file.close()
		
	SilentWolf.configure({
		"api_key": "TSqONkYBMN63WOWHKbPfh7Dz2oECXlgCAympkPt1",
		"game_id": "NeonRain",
		"game_version": "1.0.3",
		"log_level": 1
	})
	SilentWolf.configure_scores({
		"open_scene_on_close": "res://Scenes/menu.tscn"
	})
	


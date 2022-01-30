extends KinematicBody2D

func _physics_process(delta):
	if Input.is_action_pressed("ui_left") and position.x > 5:
		position.x -= Global.player_speed
		Global.score += 1
	if Input.is_action_pressed("ui_right") and position.x < 132:
		position.x += Global.player_speed
		Global.score += 1

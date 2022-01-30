extends RigidBody2D

var speed = 10

func _physics_process(delta):
	apply_impulse(Vector2(), Vector2(0, speed))



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Area2D_body_entered(body):
	Global.player_hits += 1
	#get_parent().get_node("floor").modulate.g -= 63.75
	#get_parent().get_node("floor").modulate.b -= 63.75
	get_parent().get_node("floor").modulate.g *= 0.55
	get_parent().get_node("floor").modulate.b *= 0.55
	if Global.player_hits >= 4:
		get_tree().change_scene("res://DeathScreen.tscn")

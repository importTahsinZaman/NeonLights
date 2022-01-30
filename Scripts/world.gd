extends Node2D

const PROJECTILE = preload("res://Scenes/Projectile.tscn")

func _on_Spawntimer_timeout():
	var player_pos = get_node("player").position.x
	var projectile = PROJECTILE.instance()
	projectile.position.y = -14
	projectile.position.x = rand_range(player_pos - 20, player_pos + 20)
	projectile.speed = rand_range(Global.min_proj_speed, Global.max_proj_speed)
	add_child(projectile)
	move_child(projectile, 4)
	$Spawntimer.wait_time = rand_range(Global.spawntimer_min, Global.spawntimer_max)



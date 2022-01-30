extends Node2D

const PROJECTILE = preload("res://Scenes/Projectile.tscn")

func _on_Spawntimer_timeout():
	var projectile = PROJECTILE.instance()
	projectile.position.y = -14
	projectile.position.x = rand_range(0, 135)
	projectile.speed = rand_range(12, 25)
	add_child(projectile)
	move_child(projectile, 4)
	$Spawntimer.wait_time = rand_range(0.1, 0.5)



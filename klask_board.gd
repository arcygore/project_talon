extends Node2D

signal player_left_area

@onready var collision_shape_2d = $PlayArea/CollisionShape2D

var exited_location
var play_area_size

func _on_play_area_body_exited(body):
	if body is Striker:
		player_left_area.emit()

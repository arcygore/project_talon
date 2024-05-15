extends Node

@onready var klask_board = $KlaskBoard
@onready var striker = $Striker

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("close_window"):
		get_tree().quit()
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()


func _on_klask_board_player_left_area():
	print(striker.position)
	print(klask_board.get_viewport_rect().size)


func _on_ball_body_entered(body):
	print(body)
	print("COLLISION!")

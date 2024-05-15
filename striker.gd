extends CharacterBody2D
class_name Striker

@export var speed = 1000

var mouse_pos
var viewport_x
var viewport_y

func _ready():
	get_viewport().warp_mouse(Vector2(200,450))
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	viewport_x = get_viewport_rect().size.x
	viewport_y = get_viewport_rect().size.y

func _physics_process(delta):
	position = position.clamp(Vector2(15,viewport_y/2), Vector2(viewport_x + 15, viewport_y))
	mouse_pos = get_global_mouse_position()
	velocity = speed*delta*(mouse_pos-position)
	move_and_slide()
	
func reset_position(location):
	get_viewport().warp_mouse(location-Vector2(20,-20))
	position = location-Vector2(20,20)

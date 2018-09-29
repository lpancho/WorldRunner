extends KinematicBody2D


const SPEED = 150
var move_direction = Vector2()

var motion = Vector2()

var is_jumping = false
const MAX_JUMP_HEIGHT = 800
const GRAVITY = 20

signal move_planet

func _process(delta):
	control_loop()
	movement_loop()
	animation_loop()
	pass

func control_loop():
	
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = Input.is_action_pressed("ui_right")
	
	move_direction.x = -int(LEFT) + int(RIGHT)
	pass

func movement_loop():
	emit_signal("move_planet", move_direction.x)
	pass

func animation_loop():
	if move_direction.x > 0:
		$anim.flip_h = false
		$anim.play("walk")
	elif move_direction.x < 0:
		$anim.flip_h = true
		
	if move_direction.x != 0:
		$anim.play("walk")
	else:
		$anim.play("stand")
	pass
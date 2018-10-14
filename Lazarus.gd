extends KinematicBody2D


const SPEED = 300
const MOVE_WORLD = 0.002
var move_direction = Vector2()
var motion = Vector2()

var is_jumping = false
const JUMP_HEIGHT = 600
const UP = Vector2(0,-1)
const GRAVITY = 20
var jump_count = 0
const MAX_JUMPS = 2

signal move_planet

func _process(delta):
	control_loop()
	movement_loop()
	animation_loop()
	pass

func control_loop():
	
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = 1 # Automate walking to right
	
	if MAX_JUMPS > jump_count:
		is_jumping = Input.is_action_just_pressed("ui_select")
		if is_jumping:
			move_direction.y = -int(is_jumping)
			jump_count += 1
	elif is_on_floor():
		jump_count = 0
		
	move_direction.x = -int(LEFT) + int(RIGHT)
	pass

func movement_loop():
	motion.y += GRAVITY
	var normal = move_direction.normalized()
	var changed_motion =  Vector2(normal.x * SPEED, normal.y * JUMP_HEIGHT)
	
	emit_signal("move_planet", MOVE_WORLD * move_direction.x, SPEED)
	
	if changed_motion.y < 0:
		motion.y = changed_motion.y
		move_direction.y = 0
		
	motion = move_and_slide(motion, UP)
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
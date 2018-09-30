extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const MAX_MILL_TO_ROTATE = 10
var current_mill = 0

func _ready():
	
	# Spreading the stars with (50, 50) distance
	var position = Vector2(0, 0)
	for star in $near_stars.get_children():
		star.position = position
		position += Vector2(50,50)
		
	position = Vector2(0, 0)
	for star in $far_stars.get_children():
		star.position = position
		position += Vector2(50,50)

	pass

func _process(delta):
	# for testing
#	rotate_stars(0.0001)
#	if current_mill == MAX_MILL_TO_ROTATE:
#		rotate_stars(0.1)
#		current_mill = 0
#
#	current_mill += 1
	pass

func rotate_stars(rotate_speed):
	$near_stars.rotation += rotate_speed * 3
	$far_stars.rotation -= rotate_speed * 4
	pass

func _on_Lazarus_move_planet(x_movement, speed):
	rotate_stars(x_movement)
	pass # replace with function body

extends Area2D

var current_rotation

func _ready():
	current_rotation = self.rotation
	pass

func _process(delta):
	
	pass

func _on_Lazarus_move_planet(x_direction):
	
	if x_direction == 1:
		current_rotation = current_rotation - 0.0005
	elif x_direction == -1:
		current_rotation = current_rotation + 0.0015

	self.rotation = current_rotation
	pass

extends StaticBody2D

func _ready():
	pass

func _process(delta):
	
	pass

func _on_Lazarus_move_planet(x_movement, speed):
	self.rotation += x_movement * -1
	pass

extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_Lazarus_move_planet(x_movement, speed):
	self.position.x += x_movement * speed * -1
	
	# This will identify the lenght of the planet.
#	print(position)
	pass # replace with function body

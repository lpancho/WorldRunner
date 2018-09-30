extends Area2D

export (int) var min_speed = 40 # Minimum speed range.
export (int) var max_speed = 80 # Maximum speed range.
var speed = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	movement_loop()
	pass

func movement_loop():
	self.position.y += speed
	pass

func play_explosion():
	for hframe in $Explosion.hframes - 1:
		$Explosion.frame = hframe
		print(hframe)
	pass

func _on_Visible_screen_exited():
	print("free me")
	queue_free()
	pass # replace with function body

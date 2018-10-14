extends Node

export (PackedScene) var Asteriod

func _ready():
	if $AsteriodTimer.is_stopped():
		$AsteriodTimer.start()
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	pass

func _on_AsteriodTimer_timeout():
#	print("spawn")
#	var aster = Asteriod.instance()
#	$Asteriods.add_child(aster)
#	aster.position = Vector2(rand_range(0, 800), 0)
#	aster.speed = rand_range(aster.min_speed, aster.max_speed)
	pass # replace with function body

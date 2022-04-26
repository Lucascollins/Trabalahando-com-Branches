extends KinematicBody2D
var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		motion.x = 1
	if Input.is_action_pressed("move_left"):
		motion.x = -1
	if Input.is_action_pressed("move_down"):
		motion.y = -1
	if Input.is_action_pressed("move_up"):
		motion.y = 1	

	move_and_slide(motion)

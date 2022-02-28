extends KinematicBody2D

const up = Vector2(0,-1)
var speed = 120
var gravity = 20
var jump = -600
var motion = Vector2()
onready var _animated_sprite = $AnimatedSprite

func _physics_process(_delta):
	motion.y += gravity 
	
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play("right")
		$AnimatedSprite.flip_h = false
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		_animated_sprite.play("right")
		$AnimatedSprite.flip_h = true
		motion.x = -speed
	else:
		_animated_sprite.play("parado")
		motion.x = 0
		
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = jump
	else:
		_animated_sprite.play("up")
			
	motion = move_and_slide(motion,up)

extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 480
var gravity = 1200
var jump = -720


# Called when the node enters the scene tree for the first time.
func _physics_process(delta:float) -> void:
	velocity.y += gravity * delta
	
	var move_direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))  
	
	velocity.x = speed * move_direction
	
	move_and_collide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

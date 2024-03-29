extends CharacterBody2D


var SPEED = 300.0
var direction_x = 0
var direction_y = 0

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction_x = Input.get_axis("move_left","move_right")
	direction_y = Input.get_axis("move_up","move_down")
	if direction_x:
		velocity.x = direction_x * SPEED
	else: 
		velocity.x = 0
	if direction_y:
		velocity.y = direction_y * SPEED
	else: 
		velocity.y = 0
	move_and_slide()

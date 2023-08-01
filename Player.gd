extends CharacterBody2D

var speed = 400
var acceleration = 1600
var friction = 1400

var input = Vector2.ZERO
var screen_size

func _physics_process(delta):
	move(delta)

#Player Movement	
func get_input():
	input.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	return input.normalized()   

func move(delta):
	
	input = get_input()
	
	if input == Vector2.ZERO:
		apply_friction(friction * delta)
		
	else:
		apply_movement(input * acceleration * delta)
	
	move_and_slide()
	
func apply_friction(amount):
	if velocity.length() > amount:
		velocity -= velocity.normalized() * amount
		
	else:
		velocity = Vector2.ZERO
		
func apply_movement(accel):
	velocity += accel
	velocity = velocity.limit_length(speed)

#Ensures that plays stays within the screen
	var viewRect := get_viewport_rect()
	position.x = clamp(position.x, 0, viewRect.size.x)
	

extends CharacterBody2D

var SPEED = 1


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("boost"):
		SPEED = 2
	else:
		SPEED = 1
	if Input.is_action_pressed("go back"):
		position.y += 10 * SPEED
	if Input.is_action_pressed("rotate left"):
		position.x -= 10 * SPEED
	if Input.is_action_pressed("rotate right"):
		position.x += 10 * SPEED
		
	if Input.is_action_pressed("go up"):
		position.y -= 10 * SPEED
	
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

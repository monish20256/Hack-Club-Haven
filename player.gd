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

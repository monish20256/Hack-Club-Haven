extends CharacterBody2D

var dead = false
var SPEED = 400.0

func die():
	if dead:
		return

	dead = true
	$AnimatedSprite2D.play("Death")

func _physics_process(delta: float) -> void:
	if dead:
		return

	var current_speed = SPEED

	if Input.is_action_pressed("boost"):
		current_speed = SPEED * 2

	velocity = Vector2.ZERO

	if Input.is_action_pressed("go back"):
		velocity.y += current_speed

	if Input.is_action_pressed("go up"):
		velocity.y -= current_speed

	if Input.is_action_pressed("rotate left"):
		velocity.x -= current_speed
		$AnimatedSprite2D.play("Left")

	elif Input.is_action_pressed("rotate right"):
		velocity.x += current_speed
		$AnimatedSprite2D.play("Right")

	else:
		$AnimatedSprite2D.play("Idle")

	velocity = velocity.normalized() * current_speed
	move_and_slide()

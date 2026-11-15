extends Camera2D
var speed = 100

var started = false
func _ready() -> void:
	pass
func _process(delta: float) -> void:
	if Input.is_action_pressed("go up") or Input.is_action_pressed("go back") or Input.is_action_pressed("rotate left") or Input.is_action_pressed("rotate right"):
		started = true
	if started:
		position.y -= 200 * delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	pass

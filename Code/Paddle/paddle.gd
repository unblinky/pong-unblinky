extends Node2D
class_name Paddle

var speed: float = 200 # px per sec.

func _process(delta: float) -> void:
	if Input.is_action_pressed("paddle_l_up"):
		position.y -= speed * delta
	if Input.is_action_pressed("paddle_l_down"):
		position.y += speed * delta

extends Node2D
class_name Ball

var velocity: Vector2 = Vector2(100, 100)

func _process(delta: float) -> void:
	position += velocity * delta
	
	if position.x < 0:
		velocity.x *= -1
	if position.x > get_viewport().size.x:
		velocity.x *= -1
		
	if position.y < 0:
		velocity.y *= -1
	if position.y > get_viewport().size.y:
		velocity.y *= -1

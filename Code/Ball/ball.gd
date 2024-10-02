extends Area2D
class_name Ball

var velocity: Vector2 = Vector2(100, 100)
var original_position: Vector2

func _ready() -> void:
	area_entered.connect(OnAreaEntered)
	original_position = position

func OnAreaEntered(area):
	if area is Paddle:
		velocity.x *= -1

func Reset():
	position = get_viewport().size / 2



func _process(delta: float) -> void:
	position += velocity * delta
	
	# Score.
	if position.x < 0 or position.x > get_viewport().size.x:
		velocity.x *= -1
		print("Score!")
	
	# Top and bottom walls.
	if position.y < 0:
		velocity.y *= -1
	if position.y > get_viewport().size.y:
		velocity.y *= -1

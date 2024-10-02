extends Area2D
class_name Goal

@onready var score_ui: Label = $ScoreUI


var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	area_entered.connect(OnAreaEntered)

func OnAreaEntered(area):
	UpdateScore(3)

func UpdateScore(delta_score: int):
	score += delta_score
	score_ui.text = str(score)
	print("Score: ", score)
	

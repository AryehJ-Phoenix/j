extends Node


var score_text = Label
var score = 0
var hit_timer = 2
var timer


func _ready() -> void:
	timer = hit_timer

func _process(delta: float) -> void:
	timer -= delta
	if score < 0:
		score = 0

func setScoreLabel(label):
	score_text = label

func add_score(amount):
	if timer < 0:
		score += amount
		score_text.text = "Score = " + str(score)
		timer = hit_timer

func multiply_score(amount):
	if timer < 0:
		score *= amount
		score_text.text = "Score = " + str(score)
		timer = hit_timer

func minus_score(amount):
	if timer < 0:
		score -= amount
		score_text.text = "Score = " + str(score)
		timer = hit_timer

func divide_score(amount):
	if timer < 0:
		score /= amount
		score_text.text = "Score = " + str(score)
		timer = hit_timer

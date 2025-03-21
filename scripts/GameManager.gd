extends Node


var score_text = Label
var score = 0
var hit_timer = 2
var timer
var skill = null
var noob_speed = 30
var pro_speed = 45
var card = null
var redo = false
var redo_timer

func _ready() -> void:
	timer = hit_timer

func _process(delta: float) -> void:
	if redo == true:
		print("uh oh")
		redo_timer = 0.1
		redo_timer -= delta
		if redo_timer < 0:
			redo = false
	
	timer -= delta
	if score < 0:
		get_tree().change_scene_to_file("res://scenes/debt.tscn")
	
	if card != null:
		card -= delta
		
		if card < 0:
			card = null
			get_tree().change_scene_to_file("res://scenes/debt.tscn")

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

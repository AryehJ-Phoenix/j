extends Node

#GITHUB STOP BEING AN ASS
var score_text = Label
var score = 0
var hit_timer = 2
var timer
var skill = null
var noob_speed = 30
var pro_speed = 45
var card = null
var redo = false
var cancel = 3
var money = 0
var money_text = Label
var ads = true
var high_score = 0
var skin = "Jasper(purple)"
var skin_one_unlock = true
var skin_two_unlock = false
var skin_three_unlock = false
var skin_four_unlock = false
var multiplier = 1
var good_ads = false
var stop_n_think = false
var correct_colors = false
var toggle_ads = false

func _ready() -> void:
	timer = hit_timer

func _process(delta: float) -> void:
	if get_tree().current_scene == null:
		return
	
	if get_tree().current_scene.name == "res://scenes/debt.tscn":
		skill = "debt"
	if get_tree().current_scene.name == "res://scenes/pro.tscn":
		skill = "pro"
	if get_tree().current_scene.name == "res://scenes/noob.tscn":
		skill = "noob"
	if get_tree().current_scene.name == "res://scenes/credit_card.tscn":
		skill = "card"
	
	if high_score < score:
		high_score = score
	
	if redo == true:
		print("uh oh")
		redo = false
	
	timer -= delta
	if score < 0:
		score = 0
		get_tree().change_scene_to_file("res://scenes/debt.tscn")
	
	if card != null:
		card -= delta
		
		if card < 0:
			card = null
			get_tree().change_scene_to_file("res://scenes/debt.tscn")
	

func setScoreLabel(label):
	score_text = label

func setMoneyLabel(label):
	money_text = label

func update_money():
	money_text.text = "Money = $" + str(money)

func add_score(amount):
	if timer < 0:
		amount *= multiplier
		score += amount
		score_text.text = "Score = " + str(score)
		timer = hit_timer

func multiply_score(amount):
	if timer < 0:
		amount *= multiplier
		score *= amount
		score_text.text = "Score = " + str(score)
		timer = hit_timer

func minus_score(amount):
	if timer < 0:
		amount *= multiplier
		score -= amount
		score_text.text = "Score = " + str(score)
		timer = hit_timer

func divide_score(amount):
	if timer < 0:
		amount *= multiplier
		score = round(score/amount)
		score_text.text = "Score = " + str(score)
		timer = hit_timer

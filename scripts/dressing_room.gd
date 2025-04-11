extends Control


@onready var lock_2: AnimatedSprite2D = $"Lock 2"
@onready var lock_3: AnimatedSprite2D = $"Lock 3"
@onready var lock_4: AnimatedSprite2D = $"Lock 4"
@onready var cost_1000: AnimatedSprite2D = $"Cost 1000"
@onready var cost_5000: AnimatedSprite2D = $"Cost 5000"
@onready var cost_100000: AnimatedSprite2D = $"Cost 100000"


var timer_2 = INF
var timer_3 = INF
var timer_4 = INF

func _ready() -> void:
	GameManager.update_money()
	if lock_2 != null:
		lock_2.self_modulate.a = 0.97
	if lock_3 != null:
		lock_3.self_modulate.a = 0.97
	if lock_4 != null:
		lock_4.self_modulate.a = 0.97


func _process(delta: float) -> void:
	timer_2 -= delta
	timer_3 -= delta
	timer_4 -= delta
	
	if timer_2 < 0:
		lock_2.visible = false
		cost_1000.visible = false
	if timer_3 < 0:
		lock_3.visible = false
		cost_5000.visible = false
	if timer_4 < 0:
		lock_4.visible = false
		cost_100000.visible = false


func _on_jasperpurple_pressed() -> void:
	if GameManager.skin_one_unlock == true:
		GameManager.skin = "Jasper(purple)"
	


func _on_jasperred_pressed() -> void:
	if GameManager.skin_two_unlock == true:
		GameManager.skin = "Jasper(red)"
	if GameManager.skin_two_unlock == false:
		if GameManager.money >= 1000:
			GameManager.money -= 1000
			GameManager.update_money()
			GameManager.skin_two_unlock = true
			GameManager.skin = "Jasper(red)"
			lock_2.play("unlock")
			timer_2 = 1
		if GameManager.money < 1000:
			lock_2.play("lock")
			print("NOPE RED J IS TOO EXPENSIVE")


func _on_eyun_pressed() -> void:
	if GameManager.skin_three_unlock == true:
		GameManager.skin = "Eyun"
	if GameManager.skin_three_unlock == false:
		if GameManager.money >= 5000:
			GameManager.money -= 5000
			GameManager.update_money()
			GameManager.skin_three_unlock = true
			GameManager.skin = "Eyun"
			lock_3.play("unlock")
			timer_3 = 1
		if GameManager.money < 5000:
			lock_3.play("lock")
			print("NOPE EYUN IS TOO EXPENSIVE")
	


func _on_thing_pressed() -> void:
	if GameManager.skin_four_unlock == true:
		GameManager.skin = "Thing"
	if GameManager.skin_four_unlock == false:
		if GameManager.money >= 100000:
			GameManager.money -= 100000
			GameManager.update_money()
			GameManager.skin_four_unlock = true
			GameManager.skin = "Thing"
			lock_4.play("unlock")
			timer_4 = 1
		if GameManager.money < 100000:
			lock_4.play("lock")
			print("NOPE THING IS TOO EXPENSIVE")


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/noob_vs_pro.tscn")

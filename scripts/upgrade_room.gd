extends Control

@onready var on_off: AnimatedSprite2D = $on_off

@onready var lock_1: AnimatedSprite2D = $"Lock 1"
@onready var lock_2: AnimatedSprite2D = $"Lock 2"
@onready var lock_3: AnimatedSprite2D = $"Lock 3"
@onready var lock_4: AnimatedSprite2D = $"Lock 4"
@onready var lock_5: AnimatedSprite2D = $"Lock 5"
@onready var lock_6: AnimatedSprite2D = $"Lock 6"

@onready var _1_2: AnimatedSprite2D = $"1-2"
@onready var _2_3: AnimatedSprite2D = $"2-3"


var timer_1 = INF
var timer_2 = INF
var timer_3 = INF
var timer_4 = INF
var timer_5 = INF
var timer_6 = INF
var click_timer = 1
var clickable = false


func _ready() -> void:
	GameManager.update_money()
	
	if lock_1 != null:
		lock_1.self_modulate.a = 0.97
	if lock_2 != null:
		lock_2.self_modulate.a = 0.97
	if lock_3 != null:
		lock_3.self_modulate.a = 0.97
	if lock_4 != null:
		lock_4.self_modulate.a = 0.97
	if lock_5 != null:
		lock_5.self_modulate.a = 0.97
	if lock_6 != null:
		lock_6.self_modulate.a = 0.97
	
	if GameManager.good_ads == true:
		lock_3.visible = false
	if GameManager.stop_n_think == true:
		lock_4.visible = false
	if GameManager.correct_colors == true:
		lock_5.visible = false
	if GameManager.toggle_ads == true:
		lock_6.visible = false
		if GameManager.ads == true:
			on_off.play("on")
		if GameManager.ads == false:
			on_off.play("off")
	
	if GameManager.multiplier >= 2:
		lock_1.visible = false
		_2_3.play("green")
	if GameManager.multiplier >= 3:
		lock_2.visible = false



func _process(delta: float) -> void:
	timer_1 -= delta
	timer_2 -= delta
	timer_3 -= delta
	timer_4 -= delta
	timer_5 -= delta
	timer_6 -= delta
	
	
	if timer_1 < 0:
		lock_1.visible = false
		_2_3.play("green")
	if timer_2 < 0:
		lock_2.visible = false
	if timer_3 < 0:
		lock_3.visible = false
	if timer_4 < 0:
		lock_4.visible = false
	if timer_5 < 0:
		lock_5.visible = false
	if timer_6 < 0:
		lock_6.visible = false
	
	click_timer -= delta
	if click_timer < 0:
		clickable = true


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/noob_vs_pro.tscn")


func _on_multiply_1_pressed() -> void:
	pass


func _on_multiply_2_pressed() -> void:
	if GameManager.multiplier == 1 and GameManager.money >= 50000:
		lock_1.play("unlock")
		GameManager.money -= 50000
		GameManager.update_money()
		GameManager.multiplier = 2
		timer_1 = 1


func _on_multiply_3_pressed() -> void:
	if GameManager.multiplier == 2 and GameManager.money >= 5000000:
		lock_2.play("unlock")
		GameManager.money -= 5000000
		GameManager.update_money()
		GameManager.multiplier = 3
		timer_2 = 1


func _on_good_ads_pressed() -> void:
	if GameManager.good_ads == false and GameManager.money >= 100000:
		lock_3.play("unlock")
		GameManager.good_ads = true
		GameManager.money -= 100000
		GameManager.update_money()
		timer_3 = 1


func _on_stop_n_think_pressed() -> void:
	if GameManager.stop_n_think == false and GameManager.money >= 100000:
		lock_4.play("unlock")
		GameManager.stop_n_think = true
		GameManager.money -= 100000
		GameManager.update_money()
		timer_4 = 1


func _on_correct_colors_pressed() -> void:
	if GameManager.correct_colors == false and GameManager.money >= 100000:
		lock_5.play("unlock")
		GameManager.correct_colors = true
		GameManager.money -= 100000
		GameManager.update_money()
		timer_5 = 1


func _on_toggle_ads_pressed() -> void:
	if GameManager.toggle_ads == false and GameManager.money >= 6:
		GameManager.toggle_ads = true
		click_timer = 1
		clickable = false
		print(on_off)
		on_off.play("off")
		lock_6.play("unlock")
		GameManager.ads = false
		GameManager.money -= 6
		GameManager.update_money()
		timer_6 = 1
	if GameManager.ads == true and GameManager.toggle_ads == true:
		print("behbvijvberhjkbnehjkberhjkgbehjkrbvv ")
		click_timer = 1
		clickable = false
		on_off.play("off")
		GameManager.ads = false
	if GameManager.ads == false and GameManager.toggle_ads == true:
		print("HBDUYSBHJVBSBCRWBGIUYGRBWFBGR")
		click_timer = 1
		clickable = false
		on_off.play("on")
		GameManager.ads = true

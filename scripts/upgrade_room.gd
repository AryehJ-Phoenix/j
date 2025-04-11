extends Control

@onready var lock_1: AnimatedSprite2D = $"Lock 1"
@onready var lock_2: AnimatedSprite2D = $"Lock 2"
@onready var lock_3: AnimatedSprite2D = $"Lock 3"
@onready var lock_4: AnimatedSprite2D = $"Lock 4"
@onready var lock_5: AnimatedSprite2D = $"Lock 5"
@onready var lock_6: AnimatedSprite2D = $"Lock 6"
@onready var lock_7: AnimatedSprite2D = $"Lock 7"


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
	if lock_7 != null:
		lock_7.self_modulate.a = 0.97



func _process(delta: float) -> void:
	pass


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/noob_vs_pro.tscn")

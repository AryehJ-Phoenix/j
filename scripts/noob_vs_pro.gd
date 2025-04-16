extends Control

@export var Ad_Free = Button

func _ready() -> void:
	GameManager.money += GameManager.high_score
	GameManager.update_money()
	GameManager.score = 0
	GameManager.high_score = 0
	print(GameManager.money)


func _on_noob_pressed() -> void:
	GameManager.skill = "noob"
	get_tree().change_scene_to_file("res://scenes/noob.tscn")


func _on_pro_pressed() -> void:
	GameManager.skill = "pro"
	get_tree().change_scene_to_file("res://scenes/pro.tscn")


	if GameManager.money < 6:
		print("NUH UH UR POOR")


func _on_dressing_room_pressed() -> void:
	GameManager.skill = "dressing room"
	get_tree().change_scene_to_file("res://scenes/dressing_room.tscn")


func _on_upgrade_room_pressed() -> void:
	GameManager.skill = "upgrade room"
	get_tree().change_scene_to_file("res://scenes/upgrade_room.tscn")

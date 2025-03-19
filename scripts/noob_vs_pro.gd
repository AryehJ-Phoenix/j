extends Control



func _on_noob_pressed() -> void:
	GameManager.skill = "noob"
	get_tree().change_scene_to_file("res://scenes/noob.tscn")


func _on_pro_pressed() -> void:
	GameManager.skill = "pro"
	get_tree().change_scene_to_file("res://scenes/pro.tscn")

extends Control



func _ready() -> void:
	GameManager.update_money()



func _process(delta: float) -> void:
	pass


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/noob_vs_pro.tscn")

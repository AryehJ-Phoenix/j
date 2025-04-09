extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_jasperpurple_pressed() -> void:
	GameManager.skin = "Jasper(purple)"


func _on_jasperred_pressed() -> void:
	GameManager.skin = "Jasper(red)"


func _on_thing_pressed() -> void:
	GameManager.skin = "Thing"


func _on_eyun_pressed() -> void:
	GameManager.skin = "Eyun"


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/noob_vs_pro.tscn")

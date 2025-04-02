extends Node2D


@onready var reset: AnimatedSprite2D = $Reset

var cancel = 3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	reset.self_modulate.a = 0.8
	if GameManager.skill == "pro" or GameManager.skill == "noob" or GameManager.skill == "debt":
		if Input.is_action_pressed("ui_cancel"):
			cancel -= delta
			reset.play("reset")
			if cancel < 0:
				get_tree().change_scene_to_file("res://scenes/noob_vs_pro.tscn")
				reset.play("blank")
		else:
			cancel = 3
			reset.play("blank")

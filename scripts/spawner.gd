extends Node2D


var time = 5
var timer
var summon = preload("res://scenes/gate_1.tscn")


func _ready() -> void:
	timer = time


func _process(delta: float) -> void:
	
	timer -= delta
	
	if timer < 0:
		spawn()


func spawn():
	var gate = summon.instantiate()
	gate.position = position
	get_parent().add_child(gate)
	timer = time

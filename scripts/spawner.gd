extends Node2D


var time = 5
var timer
var gate1 = preload("res://scenes/gate+.tscn")
var gate2 = preload("res://scenes/gate•.tscn")
var gate3 = preload("res://scenes/gate-.tscn")
var gate4 = preload("res://scenes/gate÷.tscn")
var rng = RandomNumberGenerator.new()
var number
var gate_scene
var summons = 0

func _ready() -> void:
	timer = time


func _process(delta: float) -> void:
	
	timer -= delta
	
	if timer < 0:
		spawn()


func spawn():
	GameManager.redo = true
	
	summons += 1
	
	number = rng.randi_range(1.0,4.0)
	
	if summons == 1:
		gate_scene = gate1
	
	if summons == 2:
		if number == 1 or 2:
			gate_scene = gate1
		if number == 3 or 4:
			gate_scene = gate2
	
	if summons >= 3:
		if number == 1:
			gate_scene = gate1
		if number == 2:
			gate_scene = gate2
		if number == 3:
			gate_scene = gate3
		if number == 4:
			gate_scene = gate4
	
	
	var gate = gate_scene.instantiate()
	gate.position = position
	get_parent().add_child(gate)
	timer = time

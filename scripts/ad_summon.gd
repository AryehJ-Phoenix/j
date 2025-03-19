extends Node2D

var rng = RandomNumberGenerator.new()
var timer
var ads = preload("res://scenes/ads.tscn")

func _ready() -> void:
	timer = rng.randf_range(10.0,15.0)


func _process(delta: float) -> void:
	timer -= delta
	
	if timer < 0:
		spawn()


func spawn():
	timer = rng.randf_range(15.0,25.0)
	
	var ad = ads.instantiate()
	ad.position = position
	get_parent().add_child(ad)

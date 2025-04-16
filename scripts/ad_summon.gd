extends Node2D

var rng = RandomNumberGenerator.new()
var x_position = 0
var y_position = 0
var timer
var ads = preload("res://scenes/ads.tscn")

func _ready() -> void:
	timer = rng.randf_range(5.0,15.0)


func _process(delta: float) -> void:
	timer -= delta
	
	if timer < 0 and GameManager.ads == true:
		spawn()


func spawn():
	timer = rng.randf_range(15.0,25.0)
	
	x_position = rng.randf_range(-1000.0,1000.0)
	y_position = rng.randf_range(-1000.0,1000.0)
	
	var ad = ads.instantiate()
	ad.position.x = position.x + x_position
	ad.position.y = position.y + y_position
	get_parent().add_child(ad)

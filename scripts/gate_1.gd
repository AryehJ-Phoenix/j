extends Area2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var rng = RandomNumberGenerator.new()
var number

func _ready() -> void:
	var number = rng.randi_range(-10.0,10.0)
	print(number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if number == 1:
		sprite.play("divide1")
		print("divide1")
	if number == 2:
		sprite.play("divide2")
		print("divide2")
	if number == 3:
		sprite.play("divide3")
		print("divide3")
	if number == 4:
		sprite.play("divide4")
		print("divide4")

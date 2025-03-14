extends Area2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var rng = RandomNumberGenerator.new()
var number

func _ready() -> void:
	number = rng.randi_range(1.0,20.0)
	print(number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	if number !=null:
		sprite.play(str(number))
	
	position.y += 12.5

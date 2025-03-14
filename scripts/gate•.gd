extends Area2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var rng = RandomNumberGenerator.new()
var number

func _ready() -> void:
	number = rng.randi_range(0,6)
	print(number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if number == 6:
		number = 2
	
	if number !=null:
		sprite.play(str(number))
	
	position.y += 12.5



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and number != 1:
		GameManager.multiply_score(number)

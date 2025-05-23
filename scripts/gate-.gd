extends Area2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var rng = RandomNumberGenerator.new()
var number

func _ready() -> void:
	number = rng.randi_range(1.0,5.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	if number !=null:
		sprite.play(str(number))
	
	if GameManager.skill == "noob":
		position.y += GameManager.noob_speed
	if GameManager.skill == "pro":
		position.y += GameManager.pro_speed



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		GameManager.minus_score(number)

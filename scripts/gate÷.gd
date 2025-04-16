extends Area2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var rng = RandomNumberGenerator.new()
var number

func _ready() -> void:
	number = rng.randi_range(1.0,6.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if number == 6:
		number = 0.5
	
	if number !=null or 6 or 0.5:
		sprite.play(str(number))
	
	if GameManager.skill == "noob":
		position.y += GameManager.noob_speed
	if GameManager.skill == "pro":
		position.y += GameManager.pro_speed
	
	if number == 0.5 and GameManager.correct_colors == false:
		sprite.play("0.5(red)")
	if number == 0.5 and GameManager.correct_colors == true:
		sprite.play("0.5(green)")



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and number != 1:
		GameManager.divide_score(number)

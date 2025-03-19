extends Node2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var denali: AnimatedSprite2D = $denali
@onready var lilah: AnimatedSprite2D = $lilah


var rng = RandomNumberGenerator.new()
var number

func _ready() -> void:
	number = rng.randi_range(1.0,25.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if number in [2, 3, 4]:
		number = 1
	if number in [6, 7, 8]:
		number = 5
	if number in [10, 11, 12]:
		number = 9
	if number in [14, 15, 16]:
		number = 13
	if number in [18, 19, 20]:
		number = 17
	if number in [22, 23, 24]:
		number = 21
	
	if number == 1:
		sprite.play("buy")
	if number == 5:
		sprite.play("cheese")
	if number == 9:
		sprite.play("crypto")
	if number == 13:
		denali.play("denali")
	if number == 17:
		sprite.play("dust")
	if number == 21:
		sprite.play("save her")
	if number == 25:
		lilah.play("lilah")


func _on_button_pressed() -> void:
	queue_free()


func _on_lose_pressed() -> void:
	GameManager.card = 4
	get_tree().change_scene_to_file("res://scenes/credit_card.tscn")

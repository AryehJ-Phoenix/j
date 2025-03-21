extends Node2D

@onready var sprite: AnimatedSprite2D = $normal
@onready var denali: AnimatedSprite2D = $denali
@onready var lilah: AnimatedSprite2D = $lilah

var ads = preload("res://scenes/ads.tscn")
var rng = RandomNumberGenerator.new()
var number

func _ready() -> void:
	number = rng.randi_range(1.0,25.0)
	


func _process(delta: float) -> void:
	if GameManager.redo == true:
		redo()
	
	if GameManager.skill == "noob":
		scale = Vector2(50, 50)
	if GameManager.skill == "pro":
		scale = Vector2(75, 75)
	
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
		denali.play("blank")
		lilah.play("blank")
	if number == 5:
		sprite.play("cheese")
		denali.play("blank")
		lilah.play("blank")
	if number == 9:
		sprite.play("crypto")
		denali.play("blank")
		lilah.play("blank")
	if number == 13:
		denali.play("denali")
		sprite.play("blank")
		lilah.play("blank")
	if number == 17:
		sprite.play("dust")
		denali.play("blank")
		lilah.play("blank")
	if number == 21:
		sprite.play("save her")
		denali.play("blank")
		lilah.play("blank")
	if number == 25:
		lilah.play("lilah")
		denali.play("blank")
		sprite.play("blank")
	
	
	if position.y < -2000:
		position.y = -2000


func _on_button_pressed() -> void:
	queue_free()


func _on_lose_pressed() -> void:
	GameManager.card = 4
	get_tree().change_scene_to_file("res://scenes/credit_card.tscn")

func redo():
	print("REDOING THSI SHIT")
	var ad = ads.instantiate()
	ad.position.x = position.x
	ad.position.y = position.y
	get_parent().add_child(ad)
	ad.number = number
	queue_free()

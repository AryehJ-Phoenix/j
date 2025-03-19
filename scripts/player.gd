extends CharacterBody2D


var speed = 1
var velovity
var xdirection

func _ready() -> void:
	if GameManager.skill == "noob":
		speed = 1500
	if GameManager.skill == "pro":
		speed = 2000

func _physics_process(delta: float) -> void:
	
	if xdirection:
		velocity.x = xdirection * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	xdirection = Input.get_axis("ui_left", "ui_right")
	
	rotation = xdirection
	move_and_slide()

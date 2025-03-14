extends CharacterBody2D


var speed = 300
var velovity
var xdirection

func _physics_process(delta: float) -> void:
	
	if xdirection:
		velocity.x = xdirection * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	xdirection = Input.get_axis("ui_left", "ui_right")
	
	rotation = xdirection
	move_and_slide()

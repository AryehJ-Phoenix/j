extends Node2D

@onready var sprite: AnimatedSprite2D = $"$$$"

var score

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	score = GameManager.score
	
	if GameManager.skill == "pro" or GameManager.skill == "noob":
		if score < 1:
			sprite.play("$0")
		if score > 0 and score < 30:
			sprite.play("$1-29")
		if score > 29 and score < 60:
			sprite.play("$30-59")
		if score > 59 and score < 100:
			sprite.play("$60-99")
		if score > 99 and score < 3000:
			sprite.play("$100-2999")
		if score > 2999 and score < 6000:
			sprite.play("$3000-5999")
		if score > 5999 and score < 10000:
			sprite.play("$6000-9999")
		if score > 9999 and score < 300000:
			sprite.play("$10000-299999")
		if score > 299999 and score < 600000:
			sprite.play("$300000-599999")
		if score > 599999 and score < 1000000:
			sprite.play("$600000-999999")
		if score > 999999 and score < 30000000:
			sprite.play("$1000000-29999999")
		if score > 29999999 and score < 60000000:
			sprite.play("$30000000-59999999")
		if score > 59999999 and score < 100000000:
			sprite.play("$60000000-99999999")
		if score > 99999999:
			sprite.play("$100000000+")

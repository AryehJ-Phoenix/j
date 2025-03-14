extends Label


func _ready():
	GameManager.setScoreLabel(self)
	text = "Score = 0"

func setScoreValue(integer):
	text = "Score = " + str(integer)

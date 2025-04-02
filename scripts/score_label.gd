extends Label


func _ready():
	GameManager.setScoreLabel(self)
	text = "Score = "

func setScoreValue(integer):
	text = "Score = " + str(integer)

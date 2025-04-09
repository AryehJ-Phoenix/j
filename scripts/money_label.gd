extends Label


func _ready():
	GameManager.setMoneyLabel(self)
	text = "Money = 0"

func setMoneyValue(integer):
	text = "Money = " + str(integer)

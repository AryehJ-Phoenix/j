extends Label


func _ready():
	GameManager.setMoneyLabel(self)
	text = "Money = "

func setMoneyValue(integer):
	text = "Money = " + str(integer)

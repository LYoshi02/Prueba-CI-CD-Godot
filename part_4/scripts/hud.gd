extends CanvasLayer

@export var hearts: Array[Node]

@onready var points_label: Label = %PointsLabel

func _ready():
	points_label.text = "Points: " + str(GLOBAL.get_points())

func set_points(points: int):
	points_label.text = "Points: " + str(points)

func set_hearts(lives: int):
	for h in hearts.size():
		if h < lives:
			hearts[h].show()
		else:
			hearts[h].hide()

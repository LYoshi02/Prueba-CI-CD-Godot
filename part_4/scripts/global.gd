extends Node

var _points = 0

func add_point():
	_points += 1
	print("Points: ", _points)

func get_points():
	return _points

func set_points(points: int):
	print("Setting points to: ", points)
	_points = points

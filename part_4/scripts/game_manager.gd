extends Node

@onready var hud: CanvasLayer = %HUD
@onready var character_body_2d: CharacterBody2D = %CharacterBody2D

var initialPoints = GLOBAL.get_points()
var lives = 3

func decrease_health():
	lives -= 1
	print("Lives: ", lives)
	hud.set_hearts(lives)
	
	if lives <= 0:
		GLOBAL.set_points(initialPoints)
		get_tree().call_deferred("reload_current_scene")


func add_point():
	GLOBAL.add_point()
	hud.set_points(GLOBAL.get_points())
	print("Points: ", GLOBAL.get_points())

func reset_player_position():
	character_body_2d.reset_position()

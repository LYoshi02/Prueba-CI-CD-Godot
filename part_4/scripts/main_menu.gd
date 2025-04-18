extends Control

func _ready():
	GLOBAL.set_points(0)

func _on_level_1_button_pressed() -> void:
	get_tree().change_scene_to_file("res://part_4/scenes/levels/level_1.tscn")

func _on_level_2_button_pressed() -> void:
	get_tree().change_scene_to_file("res://part_4/scenes/levels/level_2.tscn")

func _on_level_3_button_pressed() -> void:
	get_tree().change_scene_to_file("res://part_4/scenes/levels/level_3.tscn")

func _on_exit_button_pressed() -> void:
	get_tree().quit()

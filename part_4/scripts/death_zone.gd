extends Area2D

@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		#get_tree().call_deferred("reload_current_scene")
		game_manager.decrease_health()
		game_manager.reset_player_position()

extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# If the body (same layer touch this node mask)
func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup")

extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	$anim.play("collected")

func _on_anime_animation_finished() -> void:
	queue_free()

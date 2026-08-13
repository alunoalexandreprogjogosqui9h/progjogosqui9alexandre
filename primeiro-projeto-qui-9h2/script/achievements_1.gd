extends Area2D


func _on_body_entered(body: Node2D) -> void:
	queue_free()
	exibr_achivements("cup")

func exibr_achivements(achivement):
	print("Achivements: ", achivement)

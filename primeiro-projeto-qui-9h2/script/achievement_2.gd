extends Area2D


@export var achievement_name: String = "Amongus"
@export var fx_time: float = 0.10

var collected:= false 

func _on_body_entered(body: Node2D) -> void:
	if collected:
		return
		
	collected = true
	conquest_generator(body.name, achievement_name)
	
	monitoring = false 
	$collision.disabled = true
	
	var t := create_tween()
	t.tween_property(self, "scale", Vector2(1.25, 1.25), fx_time * 0.5)
	t.tween_property(self, "scale", Vector2.ZERO, fx_time * 0.5)
	await t.finished 
	
	queue_free()
	
func conquest_generator(player: String, achievement: String) -> void:
	print("🏆 jogador ", player, " recebeu conquista: ", achievement)

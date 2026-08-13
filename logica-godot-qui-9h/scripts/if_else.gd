extends Node2D

@export var idade: int = 0
@export var nome: String = "..."

func _ready() -> void:
	verificarIdade(idade)
	
func verificarIdade(i):
	if i > 17:
		print("é maior de idade e pode dirigir ")
	else:
		print("é menor de idade e não pode dirigir")

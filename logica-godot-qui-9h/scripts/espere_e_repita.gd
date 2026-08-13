extends Node2D

# Espere até que ... do Scratch
#var pode_passar := true
#
#func _ready():
	#print("Esperando...")
#
	#while not pode_passar:
		#await get_tree().process_frame
#
	#print("Agora continuou!")
	
# Repita Até Que ... Scratch
func _ready():
	var contador := 0

	while not (contador == 5):
		contador += 1
		print(contador)

	print("Fim")

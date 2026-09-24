extends Node2D

func _ready():
	var contador := 0
	#for numero in range(10):
		#contador += 1
		#print(contador)
		#await get_tree().create_timer(1.0).timeout
	while true:
		contador +=1
		print(contador)
		await get_tree().create_timer(1.0).timeout

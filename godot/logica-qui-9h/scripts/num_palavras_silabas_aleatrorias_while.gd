extends Node2D

#var contador :=0
#var letras = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
#
#func _ready():
	##for numero in range(10):
		##contador += 1
		##print(contador)
		##await get_tree().create_timer(1.0).timeout
		#
	#randomize()
	#while true:
		#contador += 1
		#var letra_aleatoria = letras[randi() % letras.length()]
		#print(str(contador) + " - " + letra_aleatoria)
		#await get_tree().create_timer(0.8).timeout
		
#var contador = 0
#var palavras = ["gato", "cachorro", "banana", "computador", "janela", "sol", "lua", "carro"]
#
#func _ready():
	#randomize()
	#while true:
		#contador += 1
		#
		#var palavra = palavras[randi() % palavras.size()]
		#
		#print(str(contador) + " - " + palavra)
		#
		#await get_tree().create_timer(0.8).timeout

var contador = 0

var silabas = [
	"ba","be","bi","bo","bu",
	"la","le","li","lo","lu",
	"ra","re","ri","ro","ru",
	"ma","me","mi","mo","mu",
	"ta","te","ti","to","tu"
]

func _ready():
	randomize()
	while true:
		contador += 1
		
		var palavra = gerar_palavra(3) # quantidade de sílabas
		print(str(contador) + " - " + palavra)
		await get_tree().create_timer(0.8).timeout


func gerar_palavra(tamanho):
	var palavra = ""
	for i in tamanho:
		palavra += silabas[randi() % silabas.size()]
	return palavra

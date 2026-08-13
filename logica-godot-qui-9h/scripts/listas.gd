extends Node2D

#var contador := 0
#var letras = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

#func _ready():
	#randomize()
	#
	#while true:
		#contador += 1
		#var letra_aleatoria = letras[randi() % letras.length()]
		#print(str(contador) + " - " + letra_aleatoria)
		#await get_tree().create_timer(0.0).timeout

#var d_pedro = "Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon"
#var array_d_pedro = d_pedro.split(" ")
#var contador = 0
#var palavras = ["gato", "cachorro", "banana", "computador", "janela", "sol", "lua", "carro"]
#
#func _ready() -> void:
	##print(array_d_pedro)
	#randomize()
	#while true:
		#contador += 1
		#var palavra = palavras[randi() % palavras.size()]
		#print(str(contador) + " - " + palavra)
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
		var palavra = gerar_palavra(20) # quantidade de sílabas
		print(str(contador) + " - " + palavra)
		await get_tree().create_timer(0.0).timeout
		
func gerar_palavra(tamanho):
	var palavra = ""
	for i in tamanho:
		palavra += silabas[randi() % silabas.size()]
	return palavra

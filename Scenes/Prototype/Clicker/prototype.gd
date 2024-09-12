extends Control
class_name prototype

var stardust : int = 0 #Inicializamos el numero de stardust

@export var score : Label #Exportamos el nodo de Label que contiene el texto para asignarlo a una var

#Inicializamos y asignamos con el metodo la ruta del nodo para la variable
func _ready() -> void:
	score = get_node("Score")  
#Creamos el aumento de stardust junto con su actualizacion
func create_stardust() -> void:
	stardust += 1
	update_ScoreLabel()
#lo que hacemos para actualizar y un control de errores
func update_ScoreLabel() -> void:
	if score:  
		score.text = "Stardust : %d" % stardust
	else:
		push_error("Score Node not assigned!")
#Creamos la funcion para que cuando se pulse el boton se ejecute la funcion
func _on_button_pressed() -> void:
	create_stardust()

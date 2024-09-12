class_name PrototypeGenerator
extends Control
#Prototipo de generador pasivo
#Exportamos los nodos
@export var label :Label

@export var button : Button

@export var timer : Timer
#Creamos la variable 
var stardust : int
#Inicializamos para poder usar los nodos en las variables y le añadimos la actualizacion del texto
func _ready() -> void:
	label = get_node("Label")
	timer = get_node("Timer")
	button = get_node("Button")
	update_label_text()
	

#Añadimos +1 por cada click y actualizamos el texto
func create_stardust() -> void:
	stardust += 1
	update_label_text()

#Actualizamos el texto en base al numero de stardust
func update_label_text() -> void:
	label.text = "Stardust : %s" % stardust

#Iniciamos el contador y una vez esté inciado lo deshabilitamos
func begin_generating_stardust() -> void:
	timer.start()
	button.disabled = true

#Hemos conectaado el nodo del boton para que cada vez que se presione se inicia la generacion
func _on_button_pressed() -> void:
	begin_generating_stardust()


func _on_timer_timeout() -> void:
	create_stardust()

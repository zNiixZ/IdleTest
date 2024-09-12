class_name Prototype
extends Control

@export var score : Label

var stardust : int = 15

func _ready() -> void:
	# Verifica si la etiqueta está correctamente asignada
	if score == null:
		push_error("Label node is not assigned!")
	else:
		print("Label node is assigned: ", score)

func create_stardust() -> void:
	stardust += 1
	print("Stardust: ", stardust)  # Imprime el valor de stardust para verificar la actualización
	update_labelScore_text()

func update_labelScore_text() -> void:
	if score:
		score.text = "Stardust: " + str(stardust)  # Usa la propiedad 'text' directamente
		print("Label text updated to: ",score.text)  # Imprime el texto actualizado para verificar
	else:
		push_error("Label node is not assigned!")

func _on_button_pressed() -> void:
	create_stardust()

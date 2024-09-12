
class_name Prototype
extends Control

@export var $Score : Label 

var stardust : int = 15

func _ready() -> void:
	if Score == null:
		push_error("Label node is not assigned!")

func create_stardust() -> void:
	stardust += 1
	print("Stardust: ", stardust)  
	update_labelScore_text()

func update_labelScore_text() -> void:
	if Score:
		Score.text = "Stardust: " + str(stardust)  
		print("Label text updated to: ", Score.text)  
	else:
		push_error("Label node is not assigned!")

func _on_button_pressed() -> void:
	create_stardust()

extends Area2D

@export var message = "Isso é a mensagem padrão do "

# https://ask.godotengine.org/22606/how-ive-handled-area2d-mouse-click-not-question
func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton &&
		event.pressed && Input.is_action_just_pressed("ui_accept")):
		print(message + name)

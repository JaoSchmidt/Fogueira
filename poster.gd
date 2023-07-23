extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Funcionou!")
		hide()

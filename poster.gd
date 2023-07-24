extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#self.connect("mouse_entered",self,"onMouseOverlap")
	#set_process_input(true)

func _input(event):
	pass
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
	#	print("Funcionou!")
	#	hide()

func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		print("Clicked")

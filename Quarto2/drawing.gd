extends Area2D
var getDrawing = false

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		$Desenho2.hide()
		$CollisionDraw.set_disabled(true)
		getDrawing = true

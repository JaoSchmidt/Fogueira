extends Area2D
var clicked = false

# https://ask.godotengine.org/22606/how-ive-handled-area2d-mouse-click-not-question
func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		if clicked == false:
			$Posters1.hide()
			clicked = true
		else:
			pass

extends Area2D
var getPosters = false

# https://ask.godotengine.org/22606/how-ive-handled-area2d-mouse-click-not-question
func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed):
		$Posters1.hide()
		$Poster_pego.play()
		$CollisionPoster1.set_disabled(true)
		$CollisionPoster2.set_disabled(true)
		getPosters = true

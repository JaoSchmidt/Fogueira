extends Area2D
var getDiary = false

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed:
		$Diario1.hide()
		$CollisionDiary.set_disabled(true)
		getDiary = true

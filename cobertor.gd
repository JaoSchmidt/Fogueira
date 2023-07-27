extends Area2D
var clicked = false


func _on_input_event(viewport, event, shape_idx):
	if clicked == false:
		if event is InputEventMouseButton && event.pressed:
			$Cobertor_fechado.hide()
			$Cobertor_aberto.show()
			clicked = true
	else:
		pass

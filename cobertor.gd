extends Area2D
var clicked = false

func _ready():
	$Collision_aberto.set_disabled(true)

func _on_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton && event.pressed:
			if clicked == false:
				$Cobertor_fechado.hide()
				$Cobertor_aberto.show()
			else:
				$Cobertor_fechado.show()
				$Cobertor_aberto.hide()
			$Collision_fechado.set_disabled(not clicked)
			$Collision_aberto.set_disabled(clicked)
			clicked = not clicked

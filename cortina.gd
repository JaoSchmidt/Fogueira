extends Area2D
var clicked = false
var getChave = false

func _ready():
	$Collision_Cortina.set_disabled(false)
	$Collision_Chave.set_disabled(true)
	

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed:
		if clicked == false:
			$Cortina_fechada.hide()
			$Collision_Cortina.set_disabled(true)
			$Collision_Chave.set_disabled(false)
			$Cortina_aberta.show()
			clicked = true
			
		elif getChave == false:
				$Chave.hide()
				getChave = true


extends Area2D
var clicked = false
var getChave = false

func _ready():
	$Collision_Chave.set_disabled(true)
	
	# var inventario = preload("res://Inventário.gd").new()
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		if clicked == false:
			$Cortina_fechada.hide()
			$Collision_Cortina.set_disabled(true)
			$Collision_Chave.set_disabled(false)
			$Cortina_aberta.show()
			clicked = true
			
		elif getChave == false:
				$Chave.hide()
				$Collision_Chave.set_disabled(true)
				$Chave2.play()
				getChave = true
				
				# emit_signal(getChave) ---> só aceita string
				# emit_signal("add_to_inventory", "Chave", "res://Prototipos/chave.png", "true")


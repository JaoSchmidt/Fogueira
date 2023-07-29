extends Area2D
var puzzle2 = false


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		if  puzzle2 == false:
			$LineEdit.visible = true
			$Senha.visible = true
			$Senha2.show()


func _on_line_edit_text_submitted(new_text):
	if puzzle2 == false && new_text.to_upper() == "ARTE":
		$Teclado.play()
		$Senha2.hide()
		$LineEdit.visible = false
		$Senha.visible = false
		puzzle2 = true
	

func _on_teclado_finished():
	$Mouse.play()


func _on_mouse_finished():
	$Pickup.play()
	$FundoNovo.show()
	$TelaFundo22.hide()
	$CollisionPolygon2D.set_disabled(true)

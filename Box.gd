extends Area2D

var BoxOpened = false

func _ready():
	$LineEdit.visible = false

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed:
		if BoxOpened == false:
			$LineEdit.visible = true
			$Senha.visible = true

func _on_line_edit_text_submitted(new_text):
	if BoxOpened == false:
		if new_text == "1234":
			$LineEdit.visible = false
			$Senha.visible = false
			BoxOpened = true
		else:
			pass

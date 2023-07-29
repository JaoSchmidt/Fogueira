extends Area2D
@onready var musica = get_node("../../../Node2D")

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		musica.musica.stop()
		$Violino.play()


func _on_violino_finished():
	musica.musica.play()

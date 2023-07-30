extends Area2D
@export var isSelected = false

func _ready():
	$Sprite2.hide()
	$CollisionPolygon2.disabled = true
	
func _full_requirement():
	return true
	
func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton &&
		event.button_index == MOUSE_BUTTON_LEFT &&
		event.pressed && _full_requirement()):
		if !isSelected:
			$Sprite1.hide()
			$Sprite2.show()
			$CollisionPolygon1.disabled = true
			$CollisionPolygon2.disabled = false
			isSelected = true
		else:
			$Sprite1.show()
			$Sprite2.hide()
			$CollisionPolygon1.disabled = false
			$CollisionPolygon2.disabled = true
			isSelected = false

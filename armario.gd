extends "res://ItemMovable.gd"

@onready var inventory = get_node("/root/Node2D/Inventory")
@export var keyItem: String
@export var targetItem: String

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed:
		print(shape_idx)
		if !isSelected && (keyItem == "" || inventory.isItemSelected(keyItem)):
			$Sprite1.hide()
			$Sprite2.show()
			$CollisionPolygon1.disabled = true
			$CollisionPolygon2.disabled = false
			isSelected = true
		else:
			if shape_idx == 2 && inventory.isItemSelected(targetItem):
				inventory.remove_item(targetItem)
			else:
				$Sprite1.show()
				$Sprite2.hide()
				$CollisionPolygon1.disabled = false
				$CollisionPolygon2.disabled = true
				isSelected = false

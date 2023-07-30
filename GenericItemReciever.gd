extends Area2D

@onready var inventory = get_node("/root/Node2D/Inventory")
@export var targetItem: String

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed:
		print( inventory.isItemSelected(targetItem))
		if inventory.isItemSelected(targetItem):
			inventory.remove_item(targetItem)

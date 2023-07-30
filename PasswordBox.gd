extends Area2D

var unlockPass = false
var isSelected = false
@export var password: String

@onready var inventory = get_node("/root/Node2D/Inventory")
@export var keyItem: String
@export var targetItem: String
@export var overlay: Area2D

func _full_requirement():
	return unlockPass

func _ready():
	$Sprite2.hide()
	$CollisionPolygon2.disabled = true
	$LineEdit.visible = false
	$Senha.visible = false

func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed && 
	event.button_index == MOUSE_BUTTON_LEFT && 
	(overlay == null || overlay.isSelected)):
		if unlockPass == false:
			$LineEdit.visible = true
			$Senha.visible = true
		else:
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

func _on_line_edit_text_submitted(new_text):
	print(new_text)
	if unlockPass == false:
		if new_text.to_lower() == password:
			$LineEdit.visible = false
			$Senha.visible = false
			unlockPass = true
		else:
			pass


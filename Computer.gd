extends Area2D

@onready var inventory = get_node("/root/Node2D/Inventory")

signal clicked
var screen = 0

func _ready():
	$TelaFundo12.visible = false
	$TelaFundo22.visible = false
	$TelaFundo32.visible = false
	$LineEdit.visible = false
	$Senha.visible = false

# item requerido no inventário para desbloquear
@export var required_item: String
@export var password: String

func _full_requirement():
	return (required_item == "" || inventory.has_item(required_item))

func _process(delta):
	if Input.is_action_pressed("key_exited"):
		$Senha.visible = false
		$LineEdit.visible = false

# https://ask.godotengine.org/22606/how-ive-handled-area2d-mouse-click-not-question
func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton &&
		event.button_index == MOUSE_BUTTON_LEFT &&
		event.pressed):
		if !screen && shape_idx == 0:
			if inventory.isItemSelected(required_item):
				screen = 1
				inventory.remove_item(required_item)
				$TelaFundo12.show()
		elif screen == 1 && shape_idx == 1:
			$LineEdit.visible = true
			$Senha.visible = true
		elif screen == 2 && shape_idx == 1:
			$TelaFundo32.show()
	
		
func _on_line_edit_text_submitted(new_text):	
	if new_text.to_lower() == password:
		$LineEdit.visible = false
		$Senha.visible = false
		screen = 2
		$TelaFundo22.visible = true
	else:
		pass

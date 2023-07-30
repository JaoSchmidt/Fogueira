extends Area2D

signal clicked
var isSelected = false
@onready var inventory = get_node("/root/Node2D/Inventory")
# caso item fique embaixo de uma camada (e.g. cortina, mochila)
@export var overlay: Area2D
# item requerido no inventário para desbloquear
@export var required_item: String
# item irá substituir o seguinte item
@export var replace_item: String
# audio ao pegar item
@export var sound: AudioStreamPlayer2D

var icon_path
var icon_path_when_pressed

func _ready():
	icon_path = "art/HUD/inventario"+name+".png"
	icon_path_when_pressed = "art/HUD/inventario"+name+"Selected.png"
	
func _full_requirement():
	return (overlay == null || overlay.isSelected) && (required_item == "" || inventory.has_item(required_item))

# https://ask.godotengine.org/22606/how-ive-handled-area2d-mouse-click-not-question
func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton &&
		event.button_index == MOUSE_BUTTON_LEFT &&
		event.pressed &&
		_full_requirement()):
		if replace_item != "":
			inventory.remove_item(replace_item)
		clicked.emit(get_node(get_path()))
		hide()
		if (sound!=null):
			sound.play()


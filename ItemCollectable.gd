extends Area2D

signal clicked
var isSelected = false
@export var overlay: Area2D
@export var sound: AudioStreamPlayer2D

var icon_path
var icon_path_when_pressed

func _ready():
	icon_path = "art/HUD/inventario"+name+".png"
	icon_path_when_pressed = "art/HUD/inventario"+name+"Selected.png"

# https://ask.godotengine.org/22606/how-ive-handled-area2d-mouse-click-not-question
func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton &&
		event.button_index == MOUSE_BUTTON_LEFT &&
		event.pressed &&
		(overlay == null || overlay.isSelected)):
		clicked.emit(get_node(get_path()))
		hide()
		if (sound!=null):
			sound.play()


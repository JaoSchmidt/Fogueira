extends Area2D
@onready var parentNode = get_node("../$Bedroom_ang1")
@onready var uncleNode = parentNode.get_node("$Window")

func _ready():
	pass

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed:
		parentNode.hide()
		uncleNode.show()

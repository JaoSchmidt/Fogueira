extends Area2D

var BoxOpened = false
@onready var desenho = get_node("../../Bedroom_ang2/Drawing")
var puzzle3 = false

func _ready():
	$LineEdit.visible = false

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		if BoxOpened == false:
			$LineEdit.visible = true
			$Senha.visible = true
		elif desenho.getDrawing == true:
			puzzle3 = true
			desenho.getDrawing = false
			$CollisionBox.set_disabled(true)

func _on_line_edit_text_submitted(new_text):
	if BoxOpened == false && new_text.to_upper() == "DAD":
		BoxOpened = true
		$Caixa_abre.play()
	$LineEdit.visible = false
	$Senha.visible = false


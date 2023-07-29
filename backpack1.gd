extends Area2D
var ObjetoGuardado = false
var aberto = false
var puzzle1 = false
@onready var diario = get_node("../../Bedroom_ang1/Diary")

func _ready():
	$CollisionAberto.set_disabled(true)

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		if puzzle1 == false:
			if aberto == false:
				$MochilaAberta.show()
				$CollisionAberto.set_disabled(false)
				$MochilaFechada.hide()
				$CollisionFechado.set_disabled(true)
				aberto = true
			elif aberto == true && diario.getDiary == true:
				diario.getDiary = false
				puzzle1 = true
				$MochilaAberta.hide()
				$CollisionAberto.set_disabled(true)
				$MochilaFechada.show()

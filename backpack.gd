extends Area2D
var ObjetoGuardado = false
var aberto = false

func _ready():
	var cena = preload("res://diary.tscn")
	var no_alvo = cena.instance()
	add_child(no_alvo)
	var diario = no_alvo.get_node("Diary")
	$CollisionMochA.set_disabled(true)

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		if aberto == false:
			$MochilaAberta.show()
			$CollisionMochA.set_disabled(false)
			$MochilaFechada.hide()
			$CollisionMochF.set_disabled(true)

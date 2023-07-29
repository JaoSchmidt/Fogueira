extends Node2D

# var inventory = []

@onready var chave = get_node("../Bedroom_ang1/Cortina")
@onready var poster = get_node("../Bedroom_ang1/Posters")
@onready var diario = get_node("../Bedroom_ang1/Diary")
@onready var desenho = get_node("../Bedroom_ang2/Drawing")


func _process(delta):
	if chave.getChave == true:
		$Inventario/Chave.show()
	else:
		$Inventario/Chave.hide()
		
	if poster.getPosters == true:
		$Inventario/Poster.show()
	else:
		$Inventario/Poster.hide()
		
	if diario.getDiary == true:
		$Inventario/Diario.show()
	else:
		$Inventario/Diario.hide()
	
	if desenho.getDrawing == true:
		$Inventario/Desenho.show()
	else:
		$Inventario/Desenho.hide()
	
		


'''func add_to_inventory(item_name, item_texture, get_item):
	var item = {
		"name": item_name,
		"texture": item_texture,
		"get": get_item
	}
	inventory.append(item)
	update_inventory_ui()
	

func update_inventory_ui():
	pass
	# Adicione aqui a lógica para atualizar a UI do inventário com base nos itens no inventory[]
	# Por exemplo, você pode criar uma função para posicionar as imagens dos objetos no inventário

# Função para ser chamada quando o jogador colide com o objeto que pode ser pego
func _on_pickup_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		# Adicione aqui a lógica para pegar o objeto e chamar a função add_to_inventory()
		add_to_inventory("Chave", "res://chave.png", "true")'''


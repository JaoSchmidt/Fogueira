extends Node2D

var inventory_map = {}
const inventory_button_class = preload("res://InventoryButton.gd")

func remove_item(item_name):
	print(item_name)
	if(inventory_map.has(item_name)):
		
		$GridContainer.remove_child(inventory_map[item_name])
		inventory_map.erase(item_name)

func isItemSelected(item_name) -> bool:
	return inventory_map.has(item_name) && inventory_map[item_name].button_pressed

func has_item(item_name) -> bool:
	return inventory_map.has(item_name)
# add item to inventory
func _on_item_clicked(item_object):
	print("Item added to inventory "+item_object.name)
	
	# gambiarra para capa do diário apenas
	#if item_object.name == "CapaDiario":
	#	remove_item("ArcoViolino")
	
	var texture_button = inventory_button_class.new()
	texture_button.toggle_mode = true
	texture_button.item = item_object
	texture_button.texture_pressed = load(item_object.icon_path_when_pressed)
	texture_button.texture_normal = load(item_object.icon_path)
	$GridContainer.add_child(texture_button)
	
	inventory_map[str(item_object.name)] = texture_button


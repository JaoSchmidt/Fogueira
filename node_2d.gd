extends Node2D
var bedroom_part = []
var selectedBackgroundIndex = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	bedroom_part.append($Bedroom_ang1)
	bedroom_part.append($Bedroom_ang2)
	bedroom_part.append($Bedroom_ang3)
	showSpecificBackgroundByIndex(0)

func showSpecificBackgroundByIndex(index):
	for i in range(bedroom_part.size()):
		if(i == index):
			bedroom_part[i].visible = true
		else:
			bedroom_part[i].visible = false

func _on_right_texture_button_pressed():
	selectedBackgroundIndex = (selectedBackgroundIndex + 1) % bedroom_part.size()
	showSpecificBackgroundByIndex(selectedBackgroundIndex)

func _on_left_texture_button_pressed():
	selectedBackgroundIndex = (selectedBackgroundIndex -1) % bedroom_part.size()
	showSpecificBackgroundByIndex(selectedBackgroundIndex)

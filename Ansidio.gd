extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Menu.play()


func _on_play_pressed():
	$Menu.stop()
	get_tree().change_scene_to_file("res://node_2d.tscn")

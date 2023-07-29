extends Control


func _ready():
	$Fim.play()


func _on_tentar_novamente_pressed():
	$Fim.stop()
	get_tree().change_scene_to_file("res://node_2d.tscn")

extends Timer
var tempo = 180

func _ready():
	if autostart or not autostart:
		start()


func update_label_text():
	var minutes = tempo / 60
	var seconds =  tempo % 60
	get_node("Label").text = "Tempo restante:\n         %02d:%02d" % [minutes, seconds]
	


func _on_timeout():
	if tempo == 0:
		stop()
	else:
		tempo -= 1
	update_label_text()



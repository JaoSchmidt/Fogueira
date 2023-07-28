extends Node2D
var bedroom_part = []
var selectedBackgroundIndex = 0
var play1
var play2
var time = 0
var trovao1 = false
var trovao2 = false
var trovao3 = false
var trovao4 = false
var campain = false
var porta = false
var portab = false
var jan = false
var rng = RandomNumberGenerator.new()



func _ready():
	bedroom_part.append($Bedroom_ang1)
	bedroom_part.append($Bedroom_ang3)
	bedroom_part.append($Bedroom_ang2)
	bedroom_part.append($Window)
	showSpecificBackgroundByIndex(0)
	$Ansiedade1.play()
	$Chuva.play()
	rng.randomize()

var randomInt1 = rng.randi_range(30, 45)
var randomInt2 = rng.randi_range(55, 70)
var randomInt3 = rng.randi_range(95, 110)
var randomInt4 = rng.randi_range(135, 160)
var campainha = rng.randi_range(125, 135)
var portaA = rng.randi_range(140, 147)
var portaF = rng.randi_range(169, 175)
var janela = rng.randi_range(120, 121)

func _process(delta):
	time += delta
	var Temp = get_node("Window/Timer")
	
	if time >= randomInt1 && trovao1 == false:
		$Trovao.play()
		trovao1 = true
	elif time < randomInt1:
		trovao1 = false
		
	if time >= randomInt2 && trovao2 == false:
		$Trovao.play()
		trovao2 = true
	elif time < randomInt2:
		trovao2 = false

	if time >= randomInt3 && trovao3 == false:
		$Trovao.play()
		trovao3 = true
	elif time < randomInt3:
		trovao3 = false

	if time >= randomInt4 && trovao4 == false:
		$Trovao.play()
		trovao4 = true
	elif time < randomInt4:
		trovao4 = false
	
	if time >= campainha && campain == false:
		$Campainha.play()
		campain = true
	elif time < campainha:
		campain = false
		
	if time >= portaA && porta == false:
		$Porta_abre.play()
		porta = true
	elif time < portaA:
		porta = false
	
	if time >= portaF && portab == false:
		$Porta_fecha.play()
		portab = true
	elif time < portaF:
		portab = false
	
	if time >= janela && jan == false:
		$Janela.play()
		jan = true
	elif time < janela:
		jan = false
	
	if time >= 60 && time <= 121:
		$Window/Monstro1.show()
		$Window/Monstro2.hide()
		$Window/Monstro3.hide()
		play2 = false
		play1 = false
		
	elif time <= 154 && time > 121:
		if play1 == false:
			play2 = false
			$Window/Monstro1.hide()
			$Window/Monstro2.show()
			$Ansiedade_medio.show()
			$Ansiedade_max.hide()
			$Ansiedade1.stop()
			$Ansiedade2.play()
			play1 = true
			
	elif time > 154 && time < 180:
		if play2 == false:
			play1 = false
			$Window/Monstro2.hide()
			$Window/Monstro3.show()
			$Ansiedade_medio.hide()
			$Ansiedade_max.show()
			$Ansiedade2.stop()
			$Ansiedade3.play()
			play2 = true
	elif time >= 180:
		$Ansiedade3.stop()
		$Chuva.stop()
		$Ansiedade_max.hide()


func showSpecificBackgroundByIndex(index):
	for i in range(bedroom_part.size()):
		if(i == index):
			bedroom_part[i].visible = true
		else:
			bedroom_part[i].visible = false

func _on_right_texture_button_pressed():
	selectedBackgroundIndex = (selectedBackgroundIndex + 1) % (bedroom_part.size()-1)
	showSpecificBackgroundByIndex(selectedBackgroundIndex)

func _on_left_texture_button_pressed():
	if selectedBackgroundIndex == 0:
		selectedBackgroundIndex = 2
	else:
		selectedBackgroundIndex = (selectedBackgroundIndex -1) % (bedroom_part.size()-1)
	showSpecificBackgroundByIndex(selectedBackgroundIndex)


func _on_window_texture_button_pressed():
	showSpecificBackgroundByIndex(3)
	$Window/Timer/Label.show()
	$Bedroom_ang1/Ver_janela.hide()


func _on_sair_pressed():
	showSpecificBackgroundByIndex(0)
	$Window/Timer/Label.hide()


func _on_window_texture_button_mouse_entered():
	$Bedroom_ang1/Ver_janela.show()


func _on_window_texture_button_mouse_exited():
	$Bedroom_ang1/Ver_janela.hide()




extends Area2D

@onready var cobertor = get_node("../Cobertor")
@onready var cortina = get_node("../Cortina")
@onready var poster = get_node("../Posters")
@onready var diario = get_node("../Diary")
@onready var caixa = get_node("../Box")
var richas = false

func _ready():
	$CollisionSenha.set_disabled(true)
	
	
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		if richas == false:
			$"../Bed/CollisionCama".set_disabled(true)
			$"../WindowTextureButton".hide()
			$"../../RightTextureButton".set_disabled(true)
			$"../../LeftTextureButton".set_disabled(true)
			$CollisionRichas.set_disabled(true)
			$Senha.show()
			$CollisionSenha.set_disabled(false)
			richas = true
			
			if cobertor.clicked == true:
				$"../Cobertor/Collision_aberto".set_disabled(true)
			else:
				$"../Cobertor/Collision_fechado".set_disabled(true)
			
			if cortina.clicked == true && cortina.getChave == false:
				$"../Cortina/Collision_Chave".set_disabled(true)
			elif cortina.clicked == false:
				$"../Cortina/Collision_Cortina".set_disabled(true)
				
			if poster.getPosters == false:
				$"../Posters/CollisionPoster1".set_disabled(true)
				$"../Posters/CollisionPoster2".set_disabled(true)
			
			if diario.getDiary == false:
				$"../Diary/CollisionDiary".set_disabled(true)
		
			if caixa.puzzle3 == false:
				$"../Box/CollisionBox".set_disabled(true)
			
		else:
			$"../Bed/CollisionCama".set_disabled(false)
			$"../WindowTextureButton".show()
			$"../../RightTextureButton".set_disabled(false)
			$"../../LeftTextureButton".set_disabled(false)
			$CollisionRichas.set_disabled(false)
			$Senha.hide()
			$CollisionSenha.set_disabled(true)
			richas = false
			
			if cobertor.clicked == true:
				$"../Cobertor/Collision_aberto".set_disabled(true)
			else:
				$"../Cobertor/Collision_fechado".set_disabled(true)
			
			if cortina.clicked == true && cortina.getChave == false:
				$"../Cortina/Collision_Chave".set_disabled(true)
			elif cortina.clicked == false:
				$"../Cortina/Collision_Cortina".set_disabled(true)
				
			if poster.getPosters == false:
				$"../Posters/CollisionPoster1".set_disabled(true)
				$"../Posters/CollisionPoster2".set_disabled(true)
			
			if diario.getDiary == false:
				$"../Diary/CollisionDiary".set_disabled(true)
		
			if caixa.puzzle3 == false:
				$"../Box/CollisionBox".set_disabled(true)

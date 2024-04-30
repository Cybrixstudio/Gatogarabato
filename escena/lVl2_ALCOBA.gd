extends Node2D

@onready var miaw = $miaw

func _ready():
	pass
	
func _process(delta):
	pass
	
func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$cortina.visible = false
		$lestcatchgato3.visible = true
		$cortina/Area2D.visible = false
		miaw.play()
		$lestcatchgato3.play()
		
func _on_tcbaul_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$tapacerradabaul.visible = false
		$tapaabiertabaul.visible = true
		$lestcathgato1.visible = true
		$tapacerradabaul/tcbaulArea2D.visible = false
		miaw.play()
		$lestcathgato1.play()
		
func _on_puerta_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$Puerta.visible = false
		$lestcatchgato2.visible = true
		miaw.play()
		$lestcatchgato2.play()
		
func _on_zapato_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		miaw.play()
		$"gato zapato salida".play()
		
func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")
		
func _on_lestcathgato_1_animation_finished():
		$baul_idol.play()
		$baul_idol.visible = true
		$lestcathgato1.visible = false
		
func _on_lestcatchgato_2_animation_finished(): 
		$gato2puertaidol.visible = true
		$lestcatchgato2.visible = false
		
func _on_lestcatchgato_3_animation_finished():
		$gato3ventanaidol.visible = true
		$lestcatchgato3.visible = false
		
func _on_gato_zapato_salida_animation_finished():
		$"gato zapato salida".visible = false
		$gatozapatoidol.visible = true
		
func _on_cama_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		miaw.play()
		$gatocamasalida.play()
		
		

func _on_gatocamasalida_animation_finished():
	pass # Replace with function body.

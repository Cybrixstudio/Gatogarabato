extends Node2D

@onready var miaw = $miaw

func _ready():
	pass
	
func _process(delta):
	pass
	
func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$GATO3.play()
		$imggato3.visible = true
		miaw.play()
		
func _on_tcbaul_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$tapacerradabaul.visible = false
		$tapaabiertabaul.visible = true
		$GATO1.play()
		$imggato1.visible = true
		miaw.play()
		
func _on_puerta_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$GATO2.play()
		$imggato2.visible = true
		miaw.play()
		
func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")
		
func _on_gato_3_animation_finished():
		$GATO3.visible = false
		$lestcatchgato3.visible = true
		
func _on_gato_1_animation_finished():
		$GATO1.visible = false
		$lestcathgato1.visible = true
		
func _on_gato_2_animation_finished():
		$GATO2.visible = false
		$lestcatchgato2.visible = true

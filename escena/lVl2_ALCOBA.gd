extends Node2D

@onready var miaw = $miaw

func _ready():
	pass
	
func _process(delta):
	pass
	
func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$cortina.visible = false
		$imgcatchGATO3.visible = true
		$GATO3.visible = false
		$lestcatchgato3.visible = true
		$cortina/Area2D.visible = false
		miaw.play()
		
func _on_tcbaul_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$tapacerradabaul.visible = false
		$tapaabiertabaul.visible = true
		$lestcathgato1.visible = true
		$GATO1.visible = false
		$imgcatchGATO1.visible = true
		$tapacerradabaul/tcbaulArea2D.visible = false
		miaw.play()
		
func _on_puerta_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$Puerta.visible = false
		$lestcatchgato2.visible = true
		$imgcatchGATO2.visible = true
		$GATO2.visible = false
		miaw.play()
		
func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")

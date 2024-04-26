extends Node2D

var hand_cursor = preload("res://assets/Menu/puntero.png")

@onready var miaw = $miaw

func _ready():
	pass
	
func _process(delta):
	pass
	
func change_cursor_hand():
	Input.set_custom_mouse_cursor(hand_cursor)
	
func change_cursor_back():
	Input.set_custom_mouse_cursor(null)

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
		$GATO2.visible = false
		miaw.play()
		$lestcatchgato2.play()
		
func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")
		
func _on_lestcathgato_1_animation_finished():
		$baul_idol.visible = true
		$lestcathgato1.visible = false

extends Node2D

@onready var level_selector = get_node("/root/LevelSelector")
@onready var miaw = $miaw
@onready var entracuarto = $Entracuarto
@onready var miaw2 = $miaw2
@onready var miaw3 = $miaw3
@onready var miaw4 = $miaw4
@onready var miaw5 = $miaw5
@onready var sonidobaul = $sonidobaul
@onready var sonidopuerta = $sonidopuerta
@onready var sonidoventana = $sonidoventana
@onready var musica = $musica
@onready var img_gatojarron = $imggato3
@onready var img_gatoventana = $imggato2
@onready var img_gatoalacena = $imggato1
@onready var img_gatocajon = $imggato4
@onready var img_gatomesa = $imggato5
@onready var imagen_oculta = $JuegoGatos
@onready var ganaste = $ganaste

func _ready():
	pass
	entracuarto.play()
	musica.play()
	
func _process(delta):
	pass
	
func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$GATO3.play()
		$imggato3.visible = true
		miaw.play()
		sonidoventana.play()
		check_all_images_visible()
		
func _on_tcbaul_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$tapacerradabaul.visible = false
		$tapaabiertabaul.visible = true
		$GATO1.play()
		$imggato1.visible = true
		miaw2.play()
		sonidobaul.play()
		check_all_images_visible()
		
func _on_puerta_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$GATO2.play()
		$imggato2.visible = true
		miaw3.play()
		sonidopuerta.play()
		check_all_images_visible()
		
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
		
func _on_cama_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatocama.play()
		miaw4.play()
		$imggato4.visible = true
		check_all_images_visible()
		
func _on_gatocama_animation_finished():
		$gatocama.visible = false
		$gatocamaidol.visible = true
		
func _on_zapato_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatozapato.play()
		miaw5.play()
		$imggato5.visible = true
		check_all_images_visible()
		
func _on_gatozapato_animation_finished():
		$gatozapato.visible = false
		$gatozapatoidol.visible = true
		
func check_all_images_visible():
	if img_gatojarron.visible and \
		img_gatoventana.visible and \
		img_gatoalacena.visible and \
		img_gatocajon.visible and \
		img_gatomesa.visible :
		imagen_oculta.visible = true
		ganaste.play()
		

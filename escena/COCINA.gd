extends Node2D

@onready var entra = $entra 
@onready var miaw = $miaw
@onready var miaw2 = $miaw2
@onready var miaw3 = $miaw3
@onready var miaw8 = $miaw8
@onready var miaw9 = $miaw9
@onready var salacena = $salacena
@onready var spollo = $spollo
@onready var sjarron = $sjarron
@onready var smantel = $smantel
@onready var sventana = $sventana
@onready var img_gatojarron = $imggatojarron
@onready var img_gatoventana = $imggatoventana
@onready var img_gatoalacena = $imggatoalacena
@onready var img_gatocajon = $imggatocajon
@onready var img_gatomesa = $imggatomesa
@onready var imagen_oculta = $JuegoGatos
@onready var ganaste = $ganaste

func _ready():
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$ventana.visible = false
		$imggatoventana.visible = true
		miaw.play()
		$gatoventana.play()
		sventana.play()
		check_all_images_visible()
		
func _on_alacena_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$Alacenaopen.visible = true
		$Alacenaclose.visible = false
		$imggatoalacena.visible = true
		miaw2.play()
		$gatoalacena.play()
		salacena.play()
		check_all_images_visible()
		
func _on_cajon_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatocajon.play()
		$imggatocajon.visible = true
		$Cajon.visible = false
		miaw3.play()
		spollo.play()
		check_all_images_visible()
		
func _on_mantel_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatomantel.play()
		$imggatomesa.visible = true
		miaw8.play()
		smantel.play()
		check_all_images_visible()

func _on_jarron_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatojarron.play()
		$imggatojarron.visible = true
		miaw9.play()
		sjarron.play()
		check_all_images_visible()
		
func check_all_images_visible():
	if img_gatojarron.visible and \
		img_gatoventana.visible and \
		img_gatoalacena.visible and \
		img_gatocajon.visible and \
		img_gatomesa.visible :
		imagen_oculta.visible = true
		ganaste.play()
		
func _on_gatoventana_animation_finished():
		$gatoventanaidol.visible = true
		$gatoventana.visible = false
		
func _on_gatoalacena_animation_finished():
		$gatoalacena.visible = false
		$gatoalacenaidol.visible = true
		
func _on_gatocajon_animation_finished():
		$gatocajon.visible = false
		$letscatchgatocajon.visible = true
		
func _on_gatomantel_animation_finished():
		$gatomantel.visible = false
		$lestcatchgatomantel.visible = true
		
func _on_gatojarron_animation_finished():
		$gatojarron.visible = false
		$gatojarronidol.visible = true

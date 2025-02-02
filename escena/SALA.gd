extends Node2D

@onready var level_selector = get_node("/root/LevelSelector")
@onready var piano = $piano
@onready var miaw7 = $miaw7
@onready var miaw6 = $miaw
@onready var miaw8 = $miaw8
@onready var miaw9 = $miaw9
@onready var miaw2 = $miaw2
@onready var equipo = $equipo
@onready var slibros = $slibros
@onready var smatera = $smatera
@onready var ssillon = $ssillon
@onready var img_gatojarron = $imggatocojin
@onready var img_gatoventana = $imggatopiano
@onready var img_gatoalacena = $imggatomatera
@onready var img_gatocajon = $imggatoequipo
@onready var img_gatomesa = $imggatolibros
@onready var imagen_oculta = $JuegoGatos
@onready var ganaste = $ganaste

func _ready():
	pass 
func _process(delta):
	pass
	
func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")

func _on_cojin_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatocojin.play()
		$imggatocojin.visible = true
		miaw6.play()
		ssillon.play()
		check_all_images_visible()

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatopiano.visible = true
		$gatopiano.play()
		miaw7.play()
		piano.play()
		check_all_images_visible()

func _on_equipo_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatoequipo.visible = true
		$gatoequipo.play()
		miaw8.play()
		equipo.play()
		check_all_images_visible()

func _on_matera_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatomatera.visible = true
		$gatomatera.play()
		miaw9.play()
		smatera.play()
		check_all_images_visible()

func _on_libros_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatolibros.visible = true
		$gatolibros.play()
		miaw2.play()
		slibros.play()
		check_all_images_visible()
		
func _on_gatocojin_animation_finished():
		$gatocojin.visible = false
		$gatocojinidol.visible = true
		
func _on_gatopiano_animation_finished():
		$gatopiano.visible = false
		$lestcatchgatopiano.visible = true
		
func _on_gatomatera_animation_finished():
		$gatomatera.visible = false
		$lestcatchgatomatera.visible = true
		
func _on_gatoequipo_animation_finished():
		$gatoequipo.visible = false
		$lestcatchgatoequipo.visible = true
		
func _on_gatolibros_animation_finished():
		$gatolibros.visible = false
		$letscatchgatolibros.visible = true
		
func check_all_images_visible():
	if img_gatojarron.visible and \
		img_gatoventana.visible and \
		img_gatoalacena.visible and \
		img_gatocajon.visible and \
		img_gatomesa.visible :
		imagen_oculta.visible = true
		ganaste.play()
		


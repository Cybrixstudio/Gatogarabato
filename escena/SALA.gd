extends Node2D
	
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

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatopiano.visible = true
		$gatopiano.play()
		miaw7.play()
		piano.play()

func _on_equipo_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatoequipo.visible = true
		$gatoequipo.play()
		miaw8.play()
		equipo.play()

func _on_matera_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatomatera.visible = true
		$gatomatera.play()
		miaw9.play()
		smatera.play()

func _on_libros_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatolibros.visible = true
		$gatolibros.play()
		miaw2.play()
		slibros.play()
		
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

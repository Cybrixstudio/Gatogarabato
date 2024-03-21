extends Node2D

var hand_cursor = preload("res://assets/Menu/puntero.png")

@onready var miaw = $miaw
@onready var piano = $piano

func _ready():
	pass 
func _process(delta):
	pass

func change_cursor_hand():
	Input.set_custom_mouse_cursor(hand_cursor)
	
func change_cursor_back():
	Input.set_custom_mouse_cursor(null)

func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")

func _on_cojin_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatocojin.visible = true
		$imggatocojin.visible = true
		$Cojin/CojinArea2D.visible = false
		miaw.play()

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$lestcatchgatopiano.visible = true
		$imggatopiano.visible = true
		$gatopiano.visible = false
		$Partitura/Area2D.visible = false
		miaw.play()
		piano.play()

func _on_equipo_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$lestcatchgatoequipo.visible = true
		$imggatoequipo.visible = true
		$gatoequipo.visible = false
		$Equipo/equipoArea2D.visible = false
		miaw.play()

func _on_matera_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$lestcatchgatomatera.visible = true
		$imggatomatera.visible = true
		$gatomatera.visible = false
		$matera/materaArea2D.visible = false
		miaw.play()

func _on_libros_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$letscatchgatolibros.visible = true
		$imggatolibros.visible = true
		$gatolibros.visible = false
		$Libros/librosArea2D.visible = false
		miaw.play()

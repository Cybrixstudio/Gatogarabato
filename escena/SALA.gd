extends Node2D
	
@onready var miaw = $miaw
@onready var piano = $piano
	
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
		miaw.play()

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$imggatopiano.visible = true
		$gatopiano.play()
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
		
func _on_gatocojin_animation_finished():
		$gatocojin.visible = false
		$gatocojinidol.visible = true
		
func _on_gatopiano_animation_finished():
		$gatopiano.visible = false
		$lestcatchgatopiano.visible = true

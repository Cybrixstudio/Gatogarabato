extends Node2D

@onready var miaw = $miaw

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_home_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://LvL1.tscn")

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$gatoventana.visible = true
		$ventana.visible = false
		$imggatoventana.visible = true
		miaw.play()

func _on_alacena_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$Alacenaopen.visible = true
		$Alacenaclose.visible = false
		$imggatoalacena.visible = true
		miaw.play()

func _on_cajon_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$letscatchgatocajon.visible = true
		$gatocajon.visible = false
		$imggatocajon.visible = true
		$Cajon/cajonArea2D.visible = false
		miaw.play()

func _on_mantel_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$lestcatchgatomantel.visible = true
		$gatomantel.visible = false
		$imggatomesa.visible = true
		$Mantel/mantelArea2D.visible = false
		miaw.play()

func _on_jarron_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$lestcatchgatojarron.visible = true
		$gatojarron.visible = false
		$imggatojarron.visible = true
		$Jarron/jarronArea2D.visible = false
		miaw.play()
		

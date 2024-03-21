extends Control

var hand_cursor = preload("res://assets/Menu/puntero.png")

func _ready():
	pass
	
func _process(delta):
	pass
	
func change_cursor_hand():
	Input.set_custom_mouse_cursor(hand_cursor)
	
func change_cursor_back():
	Input.set_custom_mouse_cursor(null)

func _on_jugar_pressed():
	get_tree().change_scene_to_file("res://LvL1.tscn")


func _on_gato_1_animation_looped():
	pass # Replace with function body.


func _on_gato_2_animation_looped():
	pass # Replace with function body.


func _on_gato_3_animation_looped():
	pass # Replace with function body.

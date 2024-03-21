extends Node2D

var hand_cursor = preload("res://assets/Menu/puntero.png")

func _ready():
	pass
	
func _process(delta):
	pass
	
func change_cursor_hand():
	Input.set_custom_mouse_cursor(hand_cursor)
	
func change_cursor_back():
	Input.set_custom_mouse_cursor(null)

func _on_alcoba_pressed():
	get_tree().change_scene_to_file( "res://escena/lVl2_ALCOBA.tscn")


func _on_comedor_pressed():
	get_tree().change_scene_to_file( "res://escena/COCINA.tscn")


func _on_sala_pressed():
	get_tree().change_scene_to_file( "res://escena/SALA.tscn")

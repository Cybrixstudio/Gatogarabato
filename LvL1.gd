extends Node2D

func _ready():
	pass
	
func _process(delta):
	pass
	

func _on_alcoba_pressed():
	get_tree().change_scene_to_file( "res://escena/lVl2_ALCOBA.tscn")


func _on_comedor_pressed():
	get_tree().change_scene_to_file( "res://escena/COCINA.tscn")


func _on_sala_pressed():
	get_tree().change_scene_to_file( "res://escena/SALA.tscn")

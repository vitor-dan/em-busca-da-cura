extends Node2D

func _ready():
	pass

func _process(delta):
	pass

func _on_BtnVoltar_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://cenas/cena_tela_inicial.tscn")

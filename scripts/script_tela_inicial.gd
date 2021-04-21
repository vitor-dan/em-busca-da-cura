extends Node2D

func _ready():
	pass

func _process(delta):
	if (Input.is_action_just_pressed("ui_accept")):
		get_tree().change_scene("res://cenas/cena_laboratorio_1.tscn")

func _on_BtnConfiguracao_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://cenas/cena_configuracoes.tscn")

func _on_BtnRanking_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://cenas/cena_ranking.tscn")

func _on_BtnConfiguracao_mouse_entered():
	$BtnConfiguracao/AnimationPlayer.play("engrenagem_rodando")

func _on_BtnConfiguracao_mouse_exited():
	$BtnConfiguracao/AnimationPlayer.stop()

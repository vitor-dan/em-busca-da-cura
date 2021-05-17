extends Node2D

var indice_personagem = 0

func _ready():
	$KinematicBody2D/AnimationPlayer.play("parado_frente")
	ScriptGlobal.selecionar_personagem(indice_personagem)

func _process(delta):
	$KinematicBody2D/Doutor1.visible = false;
	$KinematicBody2D/Doutor2.visible = false;
	$KinematicBody2D/Enfermeiro1.visible = false;
	$KinematicBody2D/Enfermeiro2.visible = false;
	if ScriptGlobal.personagem_escolhido == ScriptGlobal.personagens[0]:
		$KinematicBody2D/Doutor1.visible = true;
	elif ScriptGlobal.personagem_escolhido == ScriptGlobal.personagens[1]:
		$KinematicBody2D/Doutor2.visible = true;
	elif ScriptGlobal.personagem_escolhido == ScriptGlobal.personagens[2]:
		$KinematicBody2D/Enfermeiro1.visible = true;
	elif ScriptGlobal.personagem_escolhido == ScriptGlobal.personagens[3]:
		$KinematicBody2D/Enfermeiro2.visible = true;

	$LabelPersonagem.bbcode_text = "[center]"+ str(ScriptGlobal.personagem_escolhido) +"[/center]"

func _on_ButtonProximoPersonagem_pressed():
	if indice_personagem == 3:
		indice_personagem = 0
	else:
		indice_personagem += 1
	ScriptGlobal.selecionar_personagem(indice_personagem)

func _on_ButtonPersonagemAnterior_pressed():
	if indice_personagem == 0:
		indice_personagem = 3
	else:
		indice_personagem -= 1
	ScriptGlobal.selecionar_personagem(indice_personagem)


func _on_ButtonSelecionar_pressed():
	get_tree().change_scene("res://cenas/cena_laboratorio_1.tscn")

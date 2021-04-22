extends Node2D

func _ready():
	pass

func _process(delta):
	pass

func _on_BtnConfiguracao_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://cenas/cena_configuracoes.tscn")

func _on_BtnRanking_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://cenas/cena_ranking.tscn")

func _on_BtnConfiguracao_mouse_entered():
	$BtnConfiguracao/AnimPlayerBtnConfiguracao.play("engrenagem_rodando")

func _on_BtnConfiguracao_mouse_exited():
	$BtnConfiguracao/AnimPlayerBtnConfiguracao.stop()

func _on_BtnRanking_mouse_entered():
	$BtnRanking/AnimPlayerBtnRanking.play("hover")

func _on_BtnRanking_mouse_exited():
	$BtnRanking/AnimPlayerBtnRanking.stop(false)
	$BtnRanking/AnimPlayerBtnRanking.seek(0, true)

func _on_BtnEntrar_pressed():
	var dados_envio = "usuario="+$LineEditUsuario.text+"&senha="+$LineEditSenha.text
	$HTTPRequest.request(ScriptGlobal.url_requisicao("auth.php"), ScriptGlobal.cabecalho_http_post, false, HTTPClient.METHOD_POST, dados_envio)

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())

	if json.result.sucesso:
		get_tree().change_scene("res://cenas/cena_laboratorio_1.tscn")
	else:
		$AcceptDialog.dialog_text = json.result.mensagem
		$AcceptDialog.show()

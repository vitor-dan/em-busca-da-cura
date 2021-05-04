extends Node2D

func _ready():
	var dados_envio = ""
	$HTTPRequest.request(ScriptGlobal.url_requisicao("ranking.php"), ScriptGlobal.cabecalho_http_post, false, HTTPClient.METHOD_POST, dados_envio)

func _on_BtnVoltar_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://cenas/cena_tela_inicial.tscn")

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	$Lista.clear()
	for i in range(json.result.size()):
		$Lista.add_item(json.result[i].nome_usuario + " - " + json.result[i].pontos)

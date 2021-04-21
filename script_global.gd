extends Node

var caminho_api = "http://localhost/estudo/uninove/cc/7/proj_sis_int/api/";
var cabecalho_http_post = ["Content-Type: application/x-www-form-urlencoded"]

func url_requisicao(url):
	return caminho_api + url

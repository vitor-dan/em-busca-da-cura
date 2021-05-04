extends Node

var caminho_site = "http://embuscadacura.freevar.com/";
var caminho_api = caminho_site  + "api/";
var cabecalho_http_post = ["Content-Type: application/x-www-form-urlencoded"]
var personagens = [
	"Médico", "Médica", "Enfermeiro", "Enfermeira"
]

var personagem_escolhido

func url_requisicao(url):
	return caminho_api + url

func selecionar_personagem(index):
	personagem_escolhido = personagens[index]

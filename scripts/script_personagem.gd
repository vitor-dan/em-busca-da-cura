extends KinematicBody2D

var mov
var vel
var animacao = "parado_frente"
var animacao_parado = "parado_frente"

func _ready():
	$Doutor1.visible = false;
	$Doutor2.visible = false;
	$Enfermeiro1.visible = false;
	$Enfermeiro2.visible = true;

func _process(delta):
	detectar_mov()
	move_and_collide(mov * delta)
	$AnimationPlayer.play(animacao)
	
func detectar_mov():
	mov = Vector2(0,0)

	if Input.is_action_pressed("mov_cima"):
		mov.y -= 1
		animacao = "correndo_costas"
		animacao_parado = "parado_costas"
	elif Input.is_action_pressed("mov_baixo"):
		mov.y += 1
		animacao = "correndo_frente"
		animacao_parado = "parado_frente"
	elif Input.is_action_pressed("mov_direita"):
		mov.x += 1
		animacao = "correndo_lado_d"
		animacao_parado = "parado_lado_d"
	elif Input.is_action_pressed("mov_esquerda"):
		mov.x -= 1
		animacao = "correndo_lado_e"
		animacao_parado = "parado_lado_e"
	else:
		animacao = animacao_parado

	# Se o botão "mov_correr" estiver pressionado, a velocidade irá aumentar
	if Input.is_action_pressed("mov_correr"):
		vel = 500
	else:
		vel = 250

	# É definida a direção do movimento e a velocidade
	mov = mov * vel

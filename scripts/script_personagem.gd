extends KinematicBody2D

var mov
var vel
var animacao = "doctor1_parado_frente"
var animacao_parado = "doctor1_parado_frente"

func _ready():
	pass

func _process(delta):
	detectar_mov()
	move_and_collide(mov * delta)
	$AnimationPlayer.play(animacao)
	
func detectar_mov():
	mov = Vector2(0,0)

	if Input.is_action_pressed("mov_cima"):
		mov.y -= 1
		animacao = "doctor1_correndo_costas"
		animacao_parado = "doctor1_parado_costas"
	elif Input.is_action_pressed("mov_baixo"):
		mov.y += 1
		animacao = "doctor1_correndo_frente"
		animacao_parado = "doctor1_parado_frente"
	elif Input.is_action_pressed("mov_direita"):
		mov.x += 1
		animacao = "doctor1_correndo_lado_d"
		animacao_parado = "doctor1_parado_lado_d"
	elif Input.is_action_pressed("mov_esquerda"):
		mov.x -= 1
		animacao = "doctor1_correndo_lado_e"
		animacao_parado = "doctor1_parado_lado_e"
	else:
		animacao = animacao_parado

	# Se o botão "mov_correr" estiver pressionado, a velocidade irá aumentar
	if Input.is_action_pressed("mov_correr"):
		vel = 500
	else:
		vel = 250

	# É definida a direção do movimento e a velocidade
	mov = mov * vel

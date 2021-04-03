extends KinematicBody2D

var mov
var vel

func _ready():
	pass

func _process(delta):
	detectar_mov()
	move_and_collide(mov * delta)
	
func detectar_mov():
	mov = Vector2(0,0)
	if Input.is_action_pressed("mov_cima"):
		mov.y -= 1
	elif Input.is_action_pressed("mov_baixo"):
		mov.y += 1
	
	if Input.is_action_pressed("mov_direita"):
		mov.x += 1
	elif Input.is_action_pressed("mov_esquerda"):
		mov.x -= 1
		
	# Se o botão "mov_correr" estiver pressionado, a velocidade irá aumentar
	if Input.is_action_pressed("mov_correr"):
		vel = 500
	else:
		vel = 250

	# É definida a direção do movimento e a velocidade
	mov = mov * vel

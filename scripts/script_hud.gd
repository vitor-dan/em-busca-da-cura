extends Node2D

var tempo = 0

func _ready():
	$ParallaxBackground/Timer.start()

func atualizar_hud():
	$ParallaxBackground/RichTextLabelTempoContador.text = "%02d" % tempo

func _process(delta):
	atualizar_hud()

func _on_Timer_timeout():
	tempo += 1

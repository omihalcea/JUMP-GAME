extends Node

var points_label: Label
@export var corazones : Array[Node]

var puntos = 0
var vidas = 3

func bajar_vida():
	vidas -= 1
	print(vidas)
	
	for corazon in 3:
		if (corazon < vidas):
			corazones[corazon].show()
		else:
			corazones[corazon].hide()
	if (vidas <= 0):
		get_tree().reload_current_scene()
		vidas = 3
		puntos = 0

func añadir_puntos():
	puntos += 1
	print(puntos)
	points_label.text = "Puntos: " + str(puntos)

func refrescar_puntos():
	points_label.text = "Puntos: " + str(puntos)

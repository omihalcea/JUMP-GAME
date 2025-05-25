extends Node

@onready var musica: AudioStreamPlayer = $Musica

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.corazones = [$UI/Vida/HBoxContainer/Corazon, $UI/Vida/HBoxContainer/Corazon2, $UI/Vida/HBoxContainer/Corazon3]
	GameManager.points_label = %PointsLabel
	GameManager.refrescar_puntos()
	
	if musica.stream != null:
		musica.play()

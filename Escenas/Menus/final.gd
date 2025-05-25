extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.points_label = %PointsLabel
	GameManager.refrescar_puntos()


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas/Menus/selector_niveles.tscn")

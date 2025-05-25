extends Area2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var audio_item = $AudioStreamPlayer

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		animated_sprite_2d.animation = "collected"
		GameManager.añadir_puntos()
		audio_item.play()


func _on_animated_sprite_2d_animation_finished():
		queue_free()

extends RigidBody2D

@onready var hurt: AudioStreamPlayer = $Hurt

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		if (y_delta > 30):
			var root = get_tree().current_scene
			remove_child(hurt)
			root.add_child(hurt)
			hurt.play()
			queue_free()
			body.jump()
		else:
			GameManager.bajar_vida()

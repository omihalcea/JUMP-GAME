extends CharacterBody2D

const SPEED = 400.0
const JUMP_VELOCITY = -1000.0
@onready var sprite_2d = $Sprite2D
@onready var audio_salto = $Salto

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func jump():
	velocity.y = JUMP_VELOCITY

func _physics_process(delta):
	
	if (velocity.x > 1 || velocity.x < -1):
		sprite_2d.animation = "correr"
	else:
		sprite_2d.animation = "default"
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
		if velocity.y < 0:
			sprite_2d.animation = "salto"
		else:
			sprite_2d.animation = "caer"

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		audio_salto.play()
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	var left = Input.get_action_strength("left")
	if direction:
		velocity.x = direction * SPEED
		if left:
			sprite_2d.flip_h = true
		else:
			sprite_2d.flip_h = false
			
	else:
		velocity.x = move_toward(velocity.x, 0, 50)

	move_and_slide()
	

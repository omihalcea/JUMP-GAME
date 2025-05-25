extends CharacterBody2D

@export var speed: float = 205.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print(speed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta
	if Input.is_action_pressed("ui_up"):
		position.y -= speed * delta
	
	

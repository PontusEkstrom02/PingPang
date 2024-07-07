extends Area2D

@export var speed = 400
var screen_size
var playerSize

# Called when the node enters the scene tree for the first time.
func _ready():
	playerSize = $Sprite2D.texture.get_size()
	screen_size = get_viewport_rect().size
	print(Vector2.ZERO)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO + playerSize/2, screen_size - playerSize/2)
	$Sprite2D.global_position = position

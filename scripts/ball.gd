extends CharacterBody2D

var screen_size : Vector2
var speed : int = 100
var dir : Vector2
var collision_data : KinematicCollision2D = null

func _ready():
	dir = Vector2(0, 1)
	screen_size = get_viewport_rect().size

func _physics_process(delta):
	
	collision_data = move_and_collide(dir * speed * delta)
	if collision_data != null:
		print("dsffsdsdfsdf")
		velocity = velocity.bounce(collision_data.get_normal())
		


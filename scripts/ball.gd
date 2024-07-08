extends CharacterBody2D

var screen_size : Vector2
var speed : int = 100
var dir : Vector2
var collision_data : KinematicCollision2D

func _ready():
	dir = Vector2(0, 1)
	screen_size = get_viewport_rect().size

func _physics_process(delta):
	
	collision_data = move_and_collide(dir * speed * delta)
	if collision_data:
		velocity.y += randf_range(-20, 20) #rand_range(-20, 20) for Godot 3
		velocity = velocity.bounce(collision_data.get_normal())
		print("sdaasd")


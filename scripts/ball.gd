extends CharacterBody2D

var speed : int = 1000
var dir : Vector2 = Vector2(1, 1).normalized()
var collision_data : KinematicCollision2D = null

func _ready():
	pass

func _physics_process(delta):
	collision_data = move_and_collide(dir * speed * delta)
	
	if collision_data:
		speed += 10
		dir = dir.bounce(collision_data.get_normal()).normalized()



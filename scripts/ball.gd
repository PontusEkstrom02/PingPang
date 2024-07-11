extends CharacterBody2D

var speed : int = 1000
var dir : Vector2 = Vector2(1, 1).normalized()
var collision_data : KinematicCollision2D = null

func _ready():
	pass

func _physics_process(delta):
	collision_data = move_and_collide(dir * speed * delta)
	
	if collision_data:
		
		
		if collision_data.get_collider().name == "Player":
			
			speed += 10
			var playerPosition = collision_data.get_collider().get_position()
			dir.x += (self.position.x - playerPosition.x)/100
			if dir.x > 4:
				dir.x = 4
			dir.y = -1
			print(dir)
		else: 
			dir = dir.bounce(collision_data.get_normal()).normalized()
		dir = dir.normalized()



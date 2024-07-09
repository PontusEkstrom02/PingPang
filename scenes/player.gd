extends CharacterBody2D


const SPEED = 400.0


func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		if Input.is_action_pressed("Dash"):
			velocity.x = direction * SPEED*2
		else:
			velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

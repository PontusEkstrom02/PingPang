extends CharacterBody2D

var win_size : Vector2
var speed : int = 100
var dir : Vector2

func _ready():
	dir = Vector2(0,0)
	

func _movement_process(delta):
	move_and_collide(dir * speed * delta)

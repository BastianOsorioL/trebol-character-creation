extends KinematicBody2D

var direction: Vector2 = Vector2(0,5)
var velocity : Vector2 = Vector2(0,0)

export var speed : float = 200
export var gravity : float

func _physics_process(delta):
	velocity.y += gravity * delta
	move_and_slide_with_snap(velocity,Vector2(0,-1))



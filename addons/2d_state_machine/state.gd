extends Node


class_name state

var validation_script = preload("res://addons/2d_state_machine/validation_state.gd").new()

var state_machine: Node
var sprite: Sprite
var character: KinematicBody2D
var anim_character: AnimationPlayer
var label_state: Label
var speed: float
var velocity: Vector2
var direction: Vector2


func enter():
	pass

func handle_input(event):
	pass
	
func get_direction():
	direction = Vector2(0,0)
	
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
		if Input.is_action_pressed("ui_left"):
			direction.x -= 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
		if Input.is_action_pressed("ui_right"):
			direction.x += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1

func move():
	character.velocity.x = speed * direction.x
	character.velocity.y = speed * direction.y
	
func walk_animation(texture, is_flip_h:bool = false):
	sprite.texture = texture
	sprite.flip_h = is_flip_h
	anim_character.play("Move")
	
func stop_walk():
	sprite.set_frame(0)
	anim_character.stop()
		
func direction_validation(state):
	match state:
		"Idle":
			validation_script.validation_idle(direction, state_machine)
		"Right":
			validation_script.validation_right(direction, state_machine)
		"Left":
			validation_script.validation_left(direction, state_machine)
		"Down":
			validation_script.validation_down(direction, state_machine)
		"Up":
			validation_script.validation_up(direction, state_machine)

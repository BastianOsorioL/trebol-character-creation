extends state

var name_state

func enter():
	name_state = self.get_name()
	label_state.text = "Up"
	var texture = preload("res://example/entities/player/sprites/hBack.png")
	walk_animation(texture)
	
func physics(delta):
	get_direction()
	move()
	
	direction_validation(name_state)

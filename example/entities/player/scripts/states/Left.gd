extends state

var name_state

func enter():
	name_state = self.get_name()
	label_state.text = "LEFT"
	var texture = preload("res://example/entities/player/sprites/hRight.png")
	walk_animation(texture, true)
	
func physics(delta):
	get_direction()
	move()
	
	direction_validation(name_state)

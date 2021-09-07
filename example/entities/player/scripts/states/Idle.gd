extends state

var name_state

func enter():
	name_state = self.get_name()
	label_state.text = "IDLE"
	stop_walk()
	
func physics(delta):
	get_direction()
	move()
	
	direction_validation(name_state)

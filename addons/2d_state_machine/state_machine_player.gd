extends state_machine

func _ready():
	states = {
		"Idle": $Idle,
		"Right": $Right,
		"Left": $Left,
		"Down": $Down,
		"Up": $Up
	}
	
	current_state = states["Idle"] #--> Definir el primer estado
	active = true
	change_state("Idle") #--> Cambiar al primer estado

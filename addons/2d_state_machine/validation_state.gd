extends Node

func validation_idle(direction, state_machine):
	if direction.x > 0:
		state_machine.change_state("Right")
	if direction.x < 0:
		state_machine.change_state("Left")
	if direction.y > 0:
		state_machine.change_state("Down")
	if direction.y < 0:
		state_machine.change_state("Up")
		
func validation_right(direction, state_machine):
	if direction == Vector2(0,0):
		state_machine.change_state("Idle")
	if direction.x < 0:
		state_machine.change_state("Left")
	if direction.y < 0 && direction.x == 0:
		state_machine.change_state("Up")
	if direction.y > 0 && direction.x == 0:
		state_machine.change_state("Down")
		
func validation_left(direction, state_machine):
	if direction == Vector2(0,0):
		state_machine.change_state("Idle")
	if direction.x > 0:
		state_machine.change_state("Right")
	if direction.y < 0 && direction.x == 0:
		state_machine.change_state("Up")
	if direction.y > 0 && direction.x == 0:
		state_machine.change_state("Down")
		
func validation_up(direction, state_machine):
	if direction == Vector2(0,0):
		state_machine.change_state("Idle")
	if direction.x > 0:
		state_machine.change_state("Right")
	if direction.x < 0:
		state_machine.change_state("Left")
	if direction.x == 0 && direction.y > 0:
		state_machine.change_state("Down")
		
func validation_down(direction, state_machine):
	if direction == Vector2(0,0):
		state_machine.change_state("Idle")
	if direction.x > 0:
		state_machine.change_state("Right")
	if direction.x < 0:
		state_machine.change_state("Left")
	if direction.x == 0 && direction.y < 0:
		state_machine.change_state("Up")

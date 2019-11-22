/// @description Insert description here
// You can write your code in this editor
if state != next_state {
	log_add(name,"state change to: " + string(next_state))
	
	if next_state = "destroy_self" and !can_delete next_state = state
	else {

		prev_state = state
		state = next_state
	}
}
/// @description Insert description here
// You can write your code in this editor
if state != next_state {
	log_add(name,"state change to: " + string(next_state))
	prev_state = state
	state = next_state
}
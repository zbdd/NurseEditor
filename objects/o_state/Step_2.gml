/// @description Insert description here
// You can write your code in this editor

if state != next_state {
	if string_pos("post_",state) == 1 state = "pre_" + next_state
	else if string_pos("pre_",state) == 1 state = next_state
	else {
		prev_state = state
		state = "post_"+state
	}
	
	log_add(string(object_get_name(object_index)) + " " + state +"\nprev: " + prev_state)	
}
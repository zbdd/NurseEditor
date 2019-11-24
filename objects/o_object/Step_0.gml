/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if string_pos("pre_",state) == 1 {
	click_count = 0
}

if state != "inactive" {
	left_press = false
	left_click = false
	
	if mouse_check_button_pressed(mb_left) and instance_position(mouse_x,mouse_y,self) == self
		left_press = true
	if mouse_check_button_released(mb_left) and instance_position(mouse_x,mouse_y,self) == self
		left_click = true
	
	show_debug_message("Count: " + string(click_count))
	
	if can_click {
		if state == next_state {
			if click_count click_count++
			if left_press click_count++

			if left_click click_count = 0
	
			if click_count > room_speed * 0.4 next_state = "hover"
			if left_click next_state = "on_click"
		}
	}
}
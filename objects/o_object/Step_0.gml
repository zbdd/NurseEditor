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
	any_press = false
	left_click_hold = false
	
	if mouse_check_button_pressed(mb_left) and instance_position(mouse_x,mouse_y,self) == self
		left_press = true
	if mouse_check_button_released(mb_left) and instance_position(mouse_x,mouse_y,self) == self
		left_click = true
		
	if left_press or left_click any_press = true
	
	show_debug_message("Count: " + string(click_count))
	
	if can_click {
		if state == next_state {
			if click_count click_count++
			if left_press click_count++

			if left_click click_count = 0
			if click_count > room_speed * 0.4 left_click_hold = true
	
			if left_click_hold and can_drag next_state = "dragging"
			if left_click next_state = "on_click"
		}
	}
	
	if state == "pre_dragging" {
		orig_x = x
		orig_y = y
	}
	if state == "dragging" {
		x = mouse_x
		y = mouse_y
		
		if any_press next_state = "active"
	}
	
}
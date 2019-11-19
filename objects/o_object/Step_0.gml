/// @description Insert description here
// You can write your code in this editor
if state == "inactive" {
}

if state != "inactive" {
	if state == "active" {
		if has_been_pressed
			if is_clickable 
				next_state = "on_click"
	}
	
	if state == "hovering" {
		x = mouse_x
		y = mouse_y
		if has_been_pressed {
			mouse_set_variable("inst_focus",noone)	
			next_state = "active"
		}
	}
	
	if state == "on_click" {
		if is_moveable {
			display_mouse_set(x,y)
			mouse_set_variable("inst_focus",id)
			next_state = "hovering"
		}	
	}
	
	has_been_pressed = false
}
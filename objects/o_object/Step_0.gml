/// @description Insert description here
// You can write your code in this editor
if state == "inactive" {
}

if state != "inactive" {
	size = ds_list_size(relations)
	
	if button_pressed > 0
		if is_clickable 
			next_state = "on_click"
	
	if state == "hovering" {
		x = mouse_x
		y = mouse_y
		
		var inst_coll = collision_circle(x,y,radius,o_object,false,true)
		if !instance_exists(inst_coll) can_place = true
		else can_place = false
	}
	
	if state == "on_click" {
		if button_pressed == mb_left {
			if is_moveable {
				display_mouse_set(x,y)
				mouse_set_variable("inst_focus",id)
				orig_x = x
				orig_y = y
				next_state = "hovering"
			}
		}	
		if button_pressed == mb_right {
				
		}
		
		if prev_state == "hovering" {
			if button_pressed == mb_left {
				mouse_set_variable("inst_focus",noone)	
			
				var merge_attempt = attempt_merge_at_position(true)
			
				if merge_attempt != 1 and can_place next_state = "active"
			} else if button_pressed == mb_right {
				next_state = "active"
				x = orig_x
				y = orig_y
			}
		}
		button_pressed = false
	}
	
	if force_relations_position relations_position_set()
}
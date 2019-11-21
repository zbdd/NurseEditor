/// @description Insert description here
// You can write your code in this editor
if state == "inactive" {
}

if state != "inactive" {
	size = ds_list_size(relations)
	
	if state == "active" {
		if has_been_pressed
			if is_clickable 
				next_state = "on_click"
	}
	
	if state == "hovering" {
		x = mouse_x
		y = mouse_y
		
		can_place = collision_circle(x,y,radius,o_object,false,true)
		
		if has_been_pressed {
			mouse_set_variable("inst_focus",noone)	
			
			if attempt_merge_at_position(true) next_state = "active"
			if !instance_exists(can_place) next_state = "active"
		}
	}
	
	if state == "on_click" {
		if is_moveable {
			display_mouse_set(x,y)
			mouse_set_variable("inst_focus",id)
			next_state = "hovering"
		}	
	}
	
	var positions = 360/1
	var angle = 360

	for(var i=0; i<size;i++) {
		var item = relations[| i]
		positions = 360/size
			
		if instance_exists(item) {
			angle -= positions
			
			if angle <= 0 || angle >= 360 {
				item.x = x + 2*radius
				item.y = y	
			} else {
				item.x = x + lengthdir_x(2*radius,angle)
				item.y = y + lengthdir_y(2*radius,angle)
			}
		}
	}
	
	has_been_pressed = false
}
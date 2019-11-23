/// @description Insert description here
// You can write your code in this editor
if state == "inactive" {
}
if is_live {
	
}
if !is_live {
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
				if ds_list_size(options) <= 0 and has_menu {
					options = object_menu_create(self)	
				} else list_contents_destroy(options)
				next_state = "active"
			}	
			if button_pressed == mb_right {
				
			}
		
			if prev_state == "hovering" {
				if button_pressed == mb_left {
					if can_place next_state = "active"
				} else if button_pressed == mb_right {
					next_state = "active"
					x = orig_x
					y = orig_y
				}
			
				if next_state == "active" mouse_set_variable("inst_focus",noone)	
			}
			button_pressed = false
		}
	}	
}
if force_relations_position list_position_set(options)
	
if state == "destroy_self" instance_destroy()

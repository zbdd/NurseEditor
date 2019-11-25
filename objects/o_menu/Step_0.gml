/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state != "inactive" {
	
	if state == "on_click" {
		if prev_state == "open" next_state = "active"
		else if !menu_find_open() next_state = "open"
		else next_state = "active"
	}
	
	if state == "open" {
		menu_set_for(self,menu_type)
		
		for (var i=0;i<ds_list_size(objects);i++) {		
			var obj = objects[| i]	
			
			if instance_exists(obj) {
				if obj.state == "inactive" obj.next_state = "active"
				
				if order_by_x_first {
					items_along_x = max_w
					count_x++
				}
				else {
					items_along_y = max_h
					popup_y = y - y_buffer * items_along_y
					count_y++
				}
					
				if count_x >= items_along_x {
					count_x = 1
					count_y++
				}
				if count_y >= items_along_y {
					count_y = 1
					count_x++
				}
					
			}
			obj.y = popup_y + y_buffer * count_y
			obj.x =  popup_x + x_buffer * count_x
		}	
	}
	if state != "open" {
		for (var i=0;i<ds_list_size(objects);i++) {
			var obj = objects[| i]	
			obj.next_state = "inactive"
		}	
	}
}
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var y_buffer = sprite_get_height(o_cube)*1.5
var x_buffer = sprite_get_height(o_cube)*1.5
var items_along_x = 4
var items_along_y = 4
var popup_x = x + x_buffer * 1
var popup_y = y - y_buffer * 1
var max_h = (room_height - y_buffer)/y_buffer
var max_w = (room_width - x_buffer)/x_buffer
var count_x = 0
var count_y = 0

if state != "inactive" {
	
	if state == "on_click" {
		if prev_state == "open" next_state = "active"
		else if !menu_find_open() next_state = "open"
		else next_state = "active"
	}
	
	if state == "open" {
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
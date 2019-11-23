/// @param ds_list
var list = argument0
var positions = 360/1
var angle = 360
show_debug_message("List size: " + string(ds_list_size(list)))
if !check_list_variable_value(list,"state","hovering")
	for(var i=0; i<ds_list_size(list);i++) {
		show_debug_message("List size: " + string(ds_list_size(list)))
		var item = list[| i]
		positions = 360/ds_list_size(list)
			
		if instance_exists(item) {
			show_debug_message("Angle: " + string(angle))
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
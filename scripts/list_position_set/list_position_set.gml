/// @param ds_list
var list = argument0
var positions = 130/1
var angle = 0

if !check_list_variable_value(list,"state","hovering") {
	
	positions = 90/4
	angle = 360 - positions * ds_list_size(list) / 2
		
	for(var i=0; i<ds_list_size(list);i++) {
		var item = list[| i]
		if instance_exists(item) {
			show_debug_message("Angle: " + string(angle))
			angle += positions
			
			if angle < 0 angle+=360
			if angle >= 360 angle -= 360
			
			item.x = x + lengthdir_x(2*radius,angle)
			item.y = y + lengthdir_y(2*radius,angle)
		}
	}
}
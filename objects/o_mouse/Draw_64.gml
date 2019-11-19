/// @description Insert description here
// You can write your code in this editor

with (instance_find(o_gui,0)) {
	if is_array(other.var_list) {
		
		draw_set_colour(c_black)
		draw_rectangle(0,top_height,string_width("Object properties"),top_height+string_height("Object properties"),false)
		
		draw_set_colour(c_white)
		draw_text(0,top_height,"Object properties")
		
		for (var i =0;i<array_length_1d(other.var_list);i++) {
			var variable = other.var_list[i]
			if instance_exists(other.inst) {
				var text_to_display = variable + ": " + string(variable_instance_get(other.inst,variable))
				var yy = top_height+(i+1)*log_y_buffer
				
				draw_set_colour(c_black)
				draw_rectangle(0,yy,string_width(text_to_display),yy+string_height(text_to_display),false)
				
				draw_set_colour(c_white)
				draw_text(0,yy,text_to_display)
			}
		}
	}
}

//

with (instance_find(o_gui,0)) {
	var inst_list = variable_instance_get_names(other)
	
	if is_array(inst_list) {
		
		draw_set_colour(c_black)
		draw_rectangle(0,height_percent*60,string_width("Mouse properties"),height_percent*60+string_height("Object properties"),false)
		
		draw_set_colour(c_white)
		draw_text(0,height_percent*60,"Mouse properties")
		
		for (var i =0;i<array_length_1d(inst_list);i++) {
			var variable = inst_list[i]
			if variable == "var_list" break
			var text_to_display = variable + ": " + string(variable_instance_get(other,variable))
			var yy = height_percent*60+(i+1)*log_y_buffer
				
			draw_set_colour(c_black)
			draw_rectangle(0,yy,string_width(text_to_display),yy+string_height(text_to_display),false)
				
			draw_set_colour(c_white)
			draw_text(0,yy,text_to_display)
		}
	}
}
/// @description Insert description here
// You can write your code in this editor

if sprite_index > 0 draw_self()

var gui = instance_find(o_gui,0)
if !instance_exists(gui) exit

with (gui) {
	if is_array(other.var_list) {
		
		draw_set_colour(c_black)
		draw_rectangle(0,top_height,string_width("Object properties"),top_height+string_height("Object properties"),false)
		
		draw_set_colour(c_white)
		draw_text(0,top_height,"Object properties")
		if instance_exists(other.inst)
				draw_text(0,top_height+log_y_buffer,"ID: " + string(other.inst.id))
		
		for (var i =0;i<array_length_1d(other.var_list);i++) {
			var variable = other.var_list[i]
			if instance_exists(other.inst) {
				var inst_got = variable_instance_get(other.inst,variable)
				if variable == "relations" inst_got = ds_list_size(inst_got)
				
				var text_to_display = variable + ": " + string(inst_got)
				var yy = top_height+(i+2)*log_y_buffer
				
				draw_set_colour(c_black)
				draw_rectangle(0,yy,string_width(text_to_display),yy+string_height(text_to_display),false)
				
				draw_set_colour(c_white)
				draw_text(0,yy,text_to_display)
			}
		}
	}
}

//

with (gui) {
	var inst_list = variable_instance_get_names(other)
	
	if is_array(inst_list) {
		draw_set_colour(c_black)
		draw_rectangle(0,height_percent*80,string_width("Mouse properties"),height_percent*80+string_height("Object properties"),false)
		
		draw_set_colour(c_white)
		draw_text(0,height_percent*80,"Mouse properties")
		draw_text(0,height_percent*80+log_y_buffer,"ID: " + string(other.id))

		for (var i =0;i<array_length_1d(inst_list);i++) {
			var variable = inst_list[i]
			if variable == "var_list" continue

			var text_to_display = variable + ": " + string(variable_instance_get(other,variable))
			var yy = height_percent*80+(i+2)*log_y_buffer
				
			draw_set_colour(c_black)
			draw_rectangle(0,yy,string_width(text_to_display),yy+string_height(text_to_display),false)
				
			draw_set_colour(c_white)
			draw_text(0,yy,text_to_display)
		}
	}
}
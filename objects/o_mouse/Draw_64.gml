/// @description Insert description here
// You can write your code in this editor

if sprite_index > 0 draw_self()

var gui = instance_find(o_gui,0)
if !instance_exists(gui) exit

if mouse_press_timer > 10 {
	if instance_exists(inst_focus) {
		draw_set_colour(c_yellow)
		draw_arrow(inst_focus.x,inst_focus.y,mouse_x,mouse_y,30)	
	}
}

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
		draw_rectangle(0,height_percent*90,string_width("Mouse properties"),height_percent*90+string_height("Object properties"),false)
		
		draw_set_colour(c_white)
		draw_text(0,height_percent*80,"Mouse properties")
		//draw_text(0,height_percent*80,"ID: " + string(other.id))
		var log_x_buffer = 100
		var x_offset = 0

		var yinc = 2
		var xinc = 0
		for (var i =0;i<array_length_1d(inst_list);i++) {
			var variable = inst_list[i]
			if variable == "var_list" continue

			var text_to_display = variable + ": " + string(variable_instance_get(other,variable))
			var yy = height_percent*80+(yinc)*log_y_buffer
			if (xinc+2)*log_x_buffer+x_offset > room_width {
				yinc++
				xinc = 0
				x_offset = 0
			} else xinc++
				
			draw_set_colour(c_black)
			draw_rectangle(xinc*log_x_buffer+x_offset,yy,xinc*log_x_buffer+string_width(text_to_display)+x_offset,yy+string_height(text_to_display),false)
			draw_set_colour(c_white)
			draw_text(xinc*log_x_buffer+x_offset,yy,text_to_display)
			x_offset += string_width(text_to_display)
		}
	}
}
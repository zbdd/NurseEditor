/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black)
// top
draw_rectangle(0,0,room_width,top_height,false)

// left
draw_rectangle(0,0,left_width,room_height,false)

// right
draw_rectangle(right_width,0,room_width,room_height,false)

// log debug
draw_set_colour(c_white)
draw_text(right_width,log_height,"Log")
var height_offset = 0
if variable_global_exists("log") {
	
	var list_size = ds_list_size(global.log)
	for (var i=1;i<10 and i<list_size;i++) {		
		var logget = global.log[| list_size-i]
		draw_text_ext(right_width,log_height+log_y_buffer*(i)+height_offset,logget,log_y_buffer,room_width-right_width)
		height_offset += string_height_ext(logget,log_y_buffer,room_width-right_width)
	}
}
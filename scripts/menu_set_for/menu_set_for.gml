/// @param menu
/// @param condition

menu = argument0
var condition = argument1

if condition == "spawn_menu" {
	with menu {
		y_buffer = sprite_get_height(o_cube)*1.5
		x_buffer = sprite_get_height(o_cube)*1.5
		items_along_x = 4
		items_along_y = 4
		popup_x = x + x_buffer * 1
		popup_y = y - y_buffer * 1
		max_h = (room_height - y_buffer)/y_buffer
		max_w = (room_width - x_buffer)/x_buffer
		count_x = 0
		count_y = 0		
	}
}

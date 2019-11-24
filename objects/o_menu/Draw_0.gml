/// @description Insert description here
// You can write your code in this editor
var y_buffer = sprite_get_height(o_cube)*1.5
var x_buffer = sprite_get_height(o_cube)*1.5
var items_along_x = 4
var items_along_y = 4
var popup_x = x + x_buffer * 1
var popup_y = y - y_buffer * 1

var count_x = 0
var count_y = 0

if state != "inactive" {
	draw_self()	
}

if state == "open" {
	if order_objects
		for (var i=0;i<ds_list_size(objects);i++) {
			popup_y = y - y_buffer * ds_list_size(objects)
			var obj = objects[| i]
			
			if instance_exists(obj) {
				if order_by_x_first
					count_x++
				else
					count_y++
					
				if count_x > 3 {
					count_x = 0
					count_y++
				}
				if count_y > 3 {
					count_y = 0
					count_x++
				}
					
			}
			obj.y = popup_y + y_buffer * count_y
			obj.x =  popup_x + x_buffer * count_x
		}
}
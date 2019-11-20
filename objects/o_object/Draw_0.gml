/// @description Insert description here
// You can write your code in this editor
if state != "inactive" {
	var size = ds_list_size(relations)
	if size > 0 {
	var positions = 360/size
	var angle = 360
	
	for(var i=0; i<size;i++) {
		var item = relations[| i]
		if instance_exists(item) {
			angle -= positions
			//show_debug_message(string(angle))
			
			if angle <= 0 || angle >= 360 {
				//show_debug_message(string(angle))
				item.x = x + radius
				item.y = y	
			} else {
				item.x = x + lengthdir_x(radius,angle)
				item.y = y + lengthdir_y(radius,angle)
			}
			draw_text(item.x,item.y,item.name)
		}
	}
	}
}
draw_self()
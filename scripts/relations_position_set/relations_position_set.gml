var positions = 360/1
var angle = 360

if !check_list_variable_value(relations,"state","hovering")
	for(var i=0; i<size;i++) {
		var item = relations[| i]
		positions = 360/size
			
		if instance_exists(item) {
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
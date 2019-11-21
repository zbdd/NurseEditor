/// @description Insert description here
// You can write your code in this editor
if state != "inactive" {
	for(var i=0; i<size;i++) {
		var item = relations[| i]
		
		if item == undefined continue
		if instance_exists(item) {
			draw_set_color(c_green)
			draw_arrow(x,y,item.x,item.y,20)
			
			draw_set_color(c_black)
			//draw_text(item.x,item.y,item.name)
		}
	}
	
	if state == "hovering" {
		if !can_place {
			draw_set_color(c_red)
			draw_circle(x,y,radius,false)
		}
		if attempt_merge_at_position(false) {
			draw_set_color(c_yellow)
			draw_circle(x,y,radius,false)
		}
	}
}
draw_set_colour(c_black)
draw_text(x,y,object_get_name(object_index))
draw_self()
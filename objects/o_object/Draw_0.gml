/// @description Insert description here
// You can write your code in this editor
if state != "inactive" {
	for(var i=0; i<size;i++) {
		var item = relations[| i]
		
		if item == undefined continue
		if instance_exists(item) {
			draw_set_color(c_green)
			draw_line(x,y,item.x,item.y)
			
			draw_set_color(c_black)
			draw_text(item.x,item.y,item.name)
		}
	}
	
	if state == "hovering" {
		draw_set_color(c_orange)
		draw_circle(x,y,radius,false)
		
		if attempt_merge_at_position(false) {
			draw_set_color(c_yellow)
			draw_circle(x,y,radius,false)
		}
	}
}
draw_self()
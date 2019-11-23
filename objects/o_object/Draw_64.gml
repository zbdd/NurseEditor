/// @description Insert description here
// You can write your code in this editor
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
draw_set_colour(c_black)
draw_text(x,y,name)
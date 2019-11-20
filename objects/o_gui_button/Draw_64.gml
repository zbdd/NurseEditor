/// @description Insert description here
// You can write your code in this editor
if state != "inactive" {	
	if state == "active" {
		draw_set_colour(c_gray)
		draw_rectangle(x,y,x+string_width(text),y+string_height(text),false)
	
		draw_set_colour(c_white)
		draw_text(x,y,text)
	} else {
		draw_set_colour(c_dkgray)
		draw_rectangle(x,y,x+string_width(text),y+string_height(text),false)
	
		draw_set_colour(c_white)
		draw_text(x,y,text)
	}
}
/// @description Insert description here
// You can write your code in this editor
if state != "inactive" {
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
draw_self()
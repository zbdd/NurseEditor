/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_xscale = string_width(text)/sprite_width
image_yscale = string_height(text)/sprite_height
if state == "active" sprite_index = sp_bounding_box

if state == "on_click" {
	next_state = "waiting"
	alarm[0] = room_speed * 0.4
	
	if name == "move" {
		for (var i=0;i<ds_list_size(relations);i++) {
			var rel = relations[| i]
			with rel {
				if instance_exists(rel) {
					display_mouse_set(x,y)
					mouse_set_variable("inst_focus",id)
					orig_x = x
					orig_y = y
					next_state = "hovering"
				}
			}
		}
	}
}
/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();
for (var i=0;i<ds_list_size(relations);i++) {
	var inst = relations[| i]	
	with (inst) {
		if state == other.name {
			events_add(other.id,"on_click_trigger")	
			
			if state == "move" {
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
	}
}
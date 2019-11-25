/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if state != "inactive" {
	
	if state == "on_click" {
		if prev_state == "open" next_state = "active"
		else next_state = "open"
	}
	
	if state == "open" {
		for (var i=0;i<ds_list_size(objects);i++) {
			var obj = objects[| i]	
			if obj.state == "inactive" obj.next_state = "active"
		}	
	}
	if state != "open" {
		for (var i=0;i<ds_list_size(objects);i++) {
			var obj = objects[| i]	
			obj.next_state = "inactive"
		}	
	}
}
/// @description Insert description here
// You can write your code in this editor
if state == "inactive" {
}

if state != "inactive" {
	if state == "active" {
		if has_been_pressed
			if is_clickable 
				next_state = "on_click"
	}
	
	if state == "hovering" {
		x = mouse_x
		y = mouse_y
		if has_been_pressed {
			mouse_set_variable("inst_focus",noone)	
			next_state = "active"
			
			var inst_list = ds_list_create()
			instance_position_list(x,y,o_object,inst_list,false)
			
			if inst_list != noone
			for(var i=0;i<ds_list_size(inst_list);i++) {
				var inst = inst_list[| i]

				if instance_exists(inst) {
					if ds_list_find_index(inst.relations,inst) <= -1
						if inst != self
							if inst.allow_add {
								ds_list_add(inst.relations,self)
								log_add(name,"connected to: " + self.name)
							}
				}
			}
		}
	}
	
	if state == "on_click" {
		if is_moveable {
			display_mouse_set(x,y)
			mouse_set_variable("inst_focus",id)
			next_state = "hovering"
		}	
	}
	
	has_been_pressed = false
}
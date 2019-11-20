/// @description Insert description here
// You can write your code in this editor
inst = instance_position(mouse_x,mouse_y,o_object)
var left_click = mouse_check_button_pressed(mb_left)

if instance_exists(inst) {
	var_list = variable_instance_get_names(inst)
	
	if left_click {
		if instance_exists(inst_focus) {
			inst_focus.has_been_pressed = true
			inst_focus = noone
		}
		else {
			inst.has_been_pressed = true
			inst_focus = inst
		}
	}
}
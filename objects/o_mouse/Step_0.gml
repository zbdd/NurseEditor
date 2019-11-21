/// @description Insert description here
// You can write your code in this editor
inst = instance_position(mouse_x,mouse_y,o_object)
var left_click = mouse_check_button_pressed(mb_left)
var right_click = mouse_check_button_pressed(mb_right)

if instance_exists(inst) {
	var_list = variable_instance_get_names(inst)
	
	if left_click {
		if inst == inst_focus || !instance_exists(inst_focus) {
			inst.button_pressed = mb_left
			inst_focus = inst
		} else inst_focus.button_pressed = mb_left
	}
	else if right_click {
		inst.button_pressed = mb_right
		inst_focus = noone
		if instance_exists(inst_focus) inst_focus.button_pressed = mb_right
	}
}
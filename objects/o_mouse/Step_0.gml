/// @description Insert description here
// You can write your code in this editor
inst = instance_position(mouse_x,mouse_y,o_object)
var left_click = mouse_check_button_pressed(mb_left)
var right_click = mouse_check_button_pressed(mb_right)

if left_click events_add(name,"left_click_pressed")
if right_click events_add(name,"right_click_pressed")

if instance_exists(inst) {
	var_list = variable_instance_get_names(inst)
	
	if left_click {
		if inst == inst_focus || !instance_exists(inst_focus)
			inst.button_pressed = mb_left
		else inst_focus.button_pressed = mb_left
	}
	else if right_click {
		inst.button_pressed = mb_right
		inst_focus = noone
		if instance_exists(inst_focus) inst_focus.button_pressed = mb_right
	}
}
if delete_mode {
	if global.event == "mouse::right_click_pressed" delete_mode = false
	
	cursor_sprite = sp_cross
	if instance_exists(inst) and left_click 
		with inst if can_delete instance_destroy()
} else cursor_sprite = -1
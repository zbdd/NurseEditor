/// @description Insert description here
// You can write your code in this editor
inst = instance_position(mouse_x,mouse_y,o_object)
var left_click_pressed = mouse_check_button_pressed(mb_left)
var right_click_pressed = mouse_check_button_pressed(mb_right)
var left_click_released = mouse_check_button_released(mb_left)
var right_click_released = mouse_check_button_released(mb_right)

var single_click = false

if left_click_pressed {
	count_start = true
	inst_focus = inst
}
	
if count_start mouse_press_timer++

if left_click_released { 
	count_start = false
	if mouse_press_timer <= 10 single_click = true
		mouse_press_timer = 0
}

// long click
if mouse_press_timer > 10 {
	if left_click_released
		if instance_exists(inst) and instance_exists(inst_focus) attempt_merge_at_position(inst)
	
}
	

//var merge_attempt = attempt_merge_at_position(true)


if (left_click_released and single_click) or right_click_released { 
	// do old behaviour - needs a cleanup
	
	if instance_exists(inst) {
		if left_click_released events_add(name,"left_click_pressed")
	if right_click_released events_add(name,"right_click_pressed")
		var_list = variable_instance_get_names(inst)
	
		if left_click_released {
			if inst == inst_focus || !instance_exists(inst_focus)
				inst.button_pressed = mb_left
			else inst_focus.button_pressed = mb_left
		}
		else if left_click_released {
			inst.button_pressed = mb_right
			inst_focus = noone
			if instance_exists(inst_focus) inst_focus.button_pressed = mb_right
		}
	}
	if delete_mode {
		if global.event == "mouse::right_click_pressed_pressed" delete_mode = false
	
		cursor_sprite = sp_cross
		if instance_exists(inst) and left_click_pressed 
			with inst if can_delete instance_destroy()
	} else cursor_sprite = -1
}

if left_click_released {
	mouse_press_timer = 0
	count_start = false
	inst_focus = noone
}

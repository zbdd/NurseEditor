/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == "on_click" {
	next_state = "wait_for_click"

}
if state = "wait_for_click" {
	var left_click = mouse_check_button_pressed(mb_left)
	var right_click = mouse_check_button_pressed(mb_right)
	
	if left_click {
		var obj = instance_create_layer(mouse_x,mouse_y,"Objects",spawn_object)
		//obj.next_state = "hovering"
		//obj.has_been_pressed = true
		next_state = "active"
	}
	if right_click next_state = "active"
	
}